<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Episode;
use App\Entity\Program;
use App\Entity\Season;
use App\Form\CategoryType;
use App\Form\ProgramSearchType;
use App\Repository\EpisodeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class WildController extends AbstractController
{
    /**
     * @Route ("wild/index", name="wild_index")
     * @return Response A response instance
     */
    public function index(): Response
    {
        $programs = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findAll();
        if (!$programs) {
            throw $this->createNotFoundException(
                'No program found in program\'s table.'
            );
        }
        return $this->render('wild/index.html.twig', [
            'programs' => $programs,
        ]);
    }
    /**
     * Getting a program with a formatted id for title
     *
     * @param string $slug
     * @Route ("wild/{slug}", name="show_program")
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
     * @Route ("wild/category/{categoryName}", name="show_category")
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
     * @Route ("wild/season/{seasonId}", name="show_season")
     * @return Response A Response instance
     */
    public function showBySeason(int $seasonId)
    {
        $episodes = $this->getDoctrine()
            ->getRepository(Episode::class)
            ->findBy(['season' => $seasonId]);
        $program = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findOneBy(['id' => $seasonId]);
        return $this->render('wild/season.html.twig', [
            'episodes' => $episodes,
            'programs' => $program,
        ]);
    }
    /**
     * @param integer $id
     * @Route ("wild/episode/{id}", name="show_episode")
     * @return Response A Response instance
     */
    public function showEpisode(Episode $episode): Response
    {
        $season = $episode->getSeason();
        return $this->render("wild/episode.html.twig", [
            'episode' => $episode,
            'season' => $season,
        ]);
    }
}
