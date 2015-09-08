<?php


class ConfigCommand extends CConsoleCommand{

    /**
     * Shows error message
     *
     * @param string $msg
     */
    private function error($msg)
    {
        exit("Init::Error: " . $msg . "\n");
    }

    /**
     * Shows info message
     *
     * @param string $msg
     * @param string $end
     */
    private function msg($msg, $end = "\n")
    {
        echo $msg . $end;
    }
    /**
     * Creates directory
     *
     * @param string $path
     */
    private function createDirectory($path)
    {
        if(file_exists($path)){
            $this->msg("Directory already exists `{$path}`.");
            return;
        }

        if (CFileHelper::createDirectory($path))
            $this->msg("Successfully created directory `{$path}`.");
        else
            $this->error("Can not create directory `{$path}`.");
    }

    /**
     * Rename file
     *
     * @param string $oldName
     * @param string $newName
     */
    private function renameFile($oldName,$newName)
    {
        if(!file_exists($oldName)){
            $this->msg("Renaming file is not exists `{$oldName}`.");
            return;
        }

        if (rename($oldName,$newName))
            $this->msg("Successfully renamed file `{$oldName}` to `{$newName}`.");
        else
            $this->error("Can not rename file `{$oldName}` to `{$newName}`.");
    }


    public function actionCreateDirs(){

        if($this->confirm('Create directories for application?')){

            $this->createDirectory(Yii::app()->basePath . '/../www/upload');
            $this->createDirectory(Yii::app()->basePath . '/../www/upload/banners');
            $this->createDirectory(Yii::app()->basePath . '/../www/assets');
            $this->createDirectory(Yii::app()->basePath . '/runtime');
        }
    }

    public function actionCreateLocal(){
        $this->renameFile(Yii::app()->basePath .'/config/local.php.template',Yii::app()->basePath .'/config/local.php');
    }
}
