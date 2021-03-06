<?php

namespace App\Controller;

use App\Entity\Actor;
use App\Entity\Category;
use App\Entity\Episode;
use App\Entity\Program;
use App\Entity\Season;
use App\Form\CategoryType;
use App\Form\ProgramSearchType;
use App\Repository\CategoryRepository;
use App\Repository\EpisodeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response as Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;


class WildController extends AbstractController
{
    /**
     * @Route ("/show/all", name="all_program")
     * @return Response A response instance
     */
    public function program(): Response
    {
        $programs = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findAll();
        if (!$programs) {
            throw $this->createNotFoundException(
                'No program found in program\'s table.'
            );
        }
        return $this->render('wild/program.html.twig', [
            'programs' => $programs,
        ]);
    }
    /**
     * @param string $slug
     * @Route ("/show/{slug}", name="program_slug")
     * @return Response A Response instance
     */
    public function showByProgram($slug): Response
    {
        if (!$slug) {
            throw $this
                ->createNotFoundException("Aucune série sélectionnée, veuillez choisir une série");
        }
        $slug = preg_replace(
            '/-/',
            ' ', ucwords(trim(strip_tags($slug)), "-")
        );
        $program = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findOneBy(['title' => $slug]);
        $seasons = $this->getDoctrine()
            ->getRepository(Season::class)
            ->findBy(['program' => $program]);
        if (!$program) {
            throw $this->createNotFoundException(
                'No program with ' . $slug . ',found in program\'table'
            );
        }
        return $this->render('wild/show.html.twig', [
            'id' => $slug,
            'program' => $program,
            'seasons' => $seasons,
        ]);
    }
    /**
     * @param string $categoryName
     * @Route ("/show/category/{categoryName}", name="show_category")
     * @return Response A Response instance
     */
    public function showByCategory(string $categoryName)
    {
        if (!$categoryName) {
            throw $this->createNotFoundException(
                'Aucune catégorie sélectionnée, veuillez choisir une catégorie'
            );
        }
        $categories = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findBy(['name' => $categoryName]);
        $categoryDetail = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findBy(['category' => $categories], ['id' => 'DESC'], 3);
        return $this->render('wild/category.html.twig', [
            'categories' => $categoryDetail,
        ]);
    }
    /**
     * @param integer $seasonId
     * @Route ("/show/season/{seasonId}", name="season")
     * @return Response A Response instance
     */
    public function showBySeason(int $seasonId)
    {
        $episodes = $this->getDoctrine()
            ->getRepository(Episode::class)
            ->findBy(['season' => $seasonId]);
        $seasons = $this->getDoctrine()
            ->getRepository(Season::class)
            ->findOneBy(['id' => $seasonId]);
        return $this->render('wild/season.html.twig', [
            'episodes' => $episodes,
            'seasons' => $seasons,
        ]);
    }
    /**
     * @param integer $id
     * @Route ("/show/episode/{id}", name="episode")
     * @return Response A Response instance
     */
    public function showEpisode(Episode $episode, int $id): Response
    {
        $season = $episode->getId();
        return $this->render("wild/episode.html.twig", [
            'episode' => $episode,
            'season' => $season,
        ]);
    }
    /**
     * @Route ("/show/actor/{id}", name="actor")
     */
    public function showActor(Actor $actor): Response
    {
        return $this->render('wild/actor.html.twig', [
            'actor' => $actor,
        ]);
    }
}
