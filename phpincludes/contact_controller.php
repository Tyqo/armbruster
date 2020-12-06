<?php
namespace BA;

use Contentomat\Contentomat;
use Contentomat\Controller;
use Contentomat\Psrautoloader;
use Contentomat\Formomat\Formomat;
use BA\Contact;

class ContactController extends Controller {

	protected $Formomat;

	protected $Contact;

	protected $AppId = 152;

	public function init() {
		$this->cmt = Contentomat::getContentomat();
		$this->templatesPath = PATHTOWEBROOT.'templates/contact/';
		$this->Contact = new Contact();
		$this->Formomat = new Formomat($this->Contact, $this->AppId);
	}


	public function actionDefault() {
		$data = $this->cmt->getVar('cmtContentData');
		$this->Formomat->setMultipleParserVars($data);

		if (!empty($this->postvars)) {
			try {
				$this->Formomat->process();
			}
			catch (Exception $e) {
				echo $e;
			}
		}


		$this->article = $this->Formomat->render($this->templatesPath.'article.tpl');
		$this->parser->setParserVar('article', $this->article);
		$this->content = $this->Formomat->render($this->templatesPath.'form.tpl');
	}
}

$autoLoader = new PsrAutoloader();
$autoLoader->addNamespace('Contentomat', INCLUDEPATHTOADMIN."classes");
$autoLoader->addNamespace('Contentomat\Formomat', INCLUDEPATHTOADMIN."classes/app_formomat");
$autoLoader->addNamespace('BA', PATHTOWEBROOT."phpincludes/classes");

$ctl = new ContactController();
$content = $ctl->work();

?>
