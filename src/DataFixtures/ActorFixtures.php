<?php

namespace App\DataFixtures;

use App\Entity\Actor;
use App\Service\Slugify;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Faker;

class ActorFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $faker = Faker\Factory::create('fr_FR');
        $slugify = new Slugify();
        for ($i = 0; $i <= 100; $i++)
        {
            $actor = new Actor();
            $slugify = new Slugify();
            $actor->setName($faker->name);
            $actor->setSlug($slugify->generate($actor->getName()));
            $actor->addProgram($this->getReference('program_'.rand(0,5)));
            $manager->persist($actor);
            $this->addReference('actor_'.$i, $actor);
        }
        $manager->flush();
    }
    public function getDependencies()
    {
        return [ProgramFixtures::class];
    }
}