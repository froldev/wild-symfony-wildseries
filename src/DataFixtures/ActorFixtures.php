<?php

namespace App\DataFixtures;

use App\Entity\Actor;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Faker;

class ActorFixtures extends Fixture implements DependentFixtureInterface
{
    const ACTORS = [
        'Alycia Debnam-Carey',
        'Colman Domingo	',
        'Reeve Carney',
        'Timothy Dalton',
        'Eva Green',
        'Scott Whyte',
    ];

    public function load(ObjectManager $manager)
    {
        foreach(self::ACTORS as $key => $actorName)
        {
            $actor = new Actor();
            $actor->setName($actorName);
            $actor->addProgram($this->getReference('program_'.rand(0,5)));
            $manager->persist($actor);
            $this->addReference('actor_'.$key, $actor);
        }

        $faker = Faker\Factory::create('fr_FR');
        for ($i = 6; $i <= 100; $i++)
        {
            $actor = new Actor();
            $actor->setName($faker->name());
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