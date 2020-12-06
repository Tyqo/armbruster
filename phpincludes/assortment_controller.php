<?php
/*
* @author Carsten Coull <c.coull@agentur-halma.de>
* @version 2020-10-18
*/
namespace BA;

use \Contentomat\PsrAutoloader;
use \Contentomat\Controller;
use \BA\Assortment;


class AssortmentController extends Controller {

  /**
  * @var \Contentomat\Assortment
  *
  **/
  protected $Assortment;


  public function init() {
    $this->Assortment = new Assortment();

    $contentData = $this->cmt->getVar('cmtContentData');
		$this->categoryId = (int)trim($contentData['head1']);

    $this->templatesPath = PATHTOWEBROOT.'templates/assortment/';
    $this->imagePath = PATHTOWEBROOT.'media/assortment/';
  }

  public function actionDefault() {
		$brand = $this->Assortment->filter(['assortment_active' => 1, 'assortment_categorie' => 0])->order(['assortment_position' => 'asc'])->findAll();
		$likor = $this->Assortment->filter(['assortment_active' => 1, 'assortment_categorie' => 1])->order(['assortment_position' => 'asc'])->findAll();


		$this->parser->setParserVar('brand', $brand);
		$this->parser->setParserVar('likor', $likor);
		$this->parser->setParserVar('imagePath', $this->imagePath);
		$this->parser->setParserVar('sizes', $this->sizes);
    $this->content = $this->parser->parseTemplate($this->templatesPath.'default.tpl');
  }
}

$autoload = new PsrAutoloader();
$autoload->addNamespace('Contentomat', INCLUDEPATHTOADMIN.'classes');
$autoload->addNamespace('BA', PATHTOWEBROOT.'phpincludes/classes');
$ctl = new AssortmentController();
$content = $ctl->work();
?>
