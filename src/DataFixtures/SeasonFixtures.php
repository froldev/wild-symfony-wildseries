<?php

namespace App\DataFixtures;
use App\Entity\Season;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Faker;

use Doctrine\Bundle\FixturesBundle\Fixture;

class SeasonFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $faker = Faker\Factory::create('fr_FR');

        for ($program = 0; $program < 6; $program++) {
            for ($i = 1; $i < 6; $i++) {
                $season = new Season();
                $season->setYear($faker->year);
                $season->setDescription($faker->sentence);
                $manager->persist($season);
                $season->setProgram($this->getReference('program_'.$program));
                $this->addReference('season_'.$program.'_'.$i, $season);
            }
        }
        $manager->flush();
    }
    public function getDependencies()
    {
        return [ProgramFixtures::class];
    }
}