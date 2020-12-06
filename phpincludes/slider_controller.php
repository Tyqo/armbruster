<?php
/*
* start_slider_controller.php
* Gets Images from Gallery
*
* @author Carsten Coull <c.coull@agentur-halma.de>
* @version 2020-02-07
*/
namespace TS;

use \Contentomat\PsrAutoloader;
use \Contentomat\Controller;
use \Contentomat\Gallery\Gallery;


class SliderController extends Controller {

  /**
  * @var \Contentomat\Gallery
  *
  **/
  protected $Gallery;


  public function init() {
    $this->Gallery = new Gallery();

    $contentData = $this->cmt->getVar('cmtContentData');
		$this->categoryId = (int)trim($contentData['head1']);

    $this->templatesPath = PATHTOWEBROOT.'templates/components/';
    $this->galleryPath = '/media/gallery/';
    $this->sizes = [
                        ['size' => 'thumbnails', 'width' => '320px'],
                        ['size' => '720', 'width' => '720px'],
                        ['size' => '1024', 'width' => '1024px'],
                        ['size' => '1920', 'width' => '1920px']
                  ];
  }

  public function actionDefault() {
		$images = $this->Gallery->getImagesInCategory($this->categoryId);
		$this->parser->setParserVar('images', $images);
		$this->parser->setParserVar('galleryPath', $this->galleryPath);
		$this->parser->setParserVar('sizes', $this->sizes);
    $image1 = $this->parser->parseTemplate($this->templatesPath.'image.tpl');
    $image2 = $this->parser->parseTemplate($this->templatesPath.'image.tpl');
    $image3 = $this->parser->parseTemplate($this->templatesPath.'image.tpl');
    $this->content = $this->parser->parseTemplate($this->templatesPath.'showcase.tpl');
  }
}

$autoload = new PsrAutoloader();
$autoload->addNamespace('Contentomat', INCLUDEPATHTOADMIN.'classes');
$autoload->addNamespace('Contentomat\Gallery', INCLUDEPATHTOADMIN.'classes/app_gallery');
$autoload->addNamespace('TS', PATHTOWEBROOT.'phpincludes/classes');
$ctl = new SliderController();
$content = $ctl->work();
?>
