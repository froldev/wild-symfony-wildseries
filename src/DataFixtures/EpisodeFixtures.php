<?php

namespace App\DataFixtures;

use App\Entity\Episode;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Faker;

class EpisodeFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $faker = Faker\Factory::create('fr_FR');

        for ($program = 0; $program < 6; $program++) {
            for ($season = 1; $season < 6; $season++) {
                $nbEpisode = rand(5,25);
                for ($i = 1; $i < $nbEpisode; $i++) {
                    $episode = new Episode();
                    $episode->setTitle($faker->word);
                    $episode->setNumber($i);
                    $episode->setSynopsis($faker->sentence);
                    $manager->persist($episode);
                    $episode->setSeason($this->getReference('season_'.$program.'_'.$season));
                    $this->addReference('episode_'.$program.'_'.$season.'_'.$i, $episode);
                }
            }
        }
        $manager->flush();
    }
    public function getDependencies()
    {
        return [SeasonFixtures::class];
    }
}
