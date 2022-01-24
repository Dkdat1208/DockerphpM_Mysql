   <?php
      function deconnexion_bdd($Dbcnx){

              if(!$Dbcnx){
                         die("Erreur : ".mysqli_connect_error());

                          }

                                 }


 if(isset($_POST['Subscribe'])){
                
$host='db';
$user='deogracia';
$passwd='eisti0001';
$db='tp';
$conn = new mysqli($host,$user,$passwd,$db);


                            
                                //  extract($_POST);
                                    
                                $fname=$_POST['Fname'];
                                $lname=$_POST['Lname'];
                                $lmail=$_POST['mail'];
                                $passwd=$_POST['mdp'];

                              try{

                        $hash=password_hash($passwd, PASSWORD_DEFAULT);
                                }catch(Exception $e){
                                    die('Erreur : '.$e->getMessage());

                                }
                    //if evrything is going well 
                            if(password_verify ( $passwd ,$hash )){
                                
                                
                       // $bdd=new PDO('mysql:host=localhost;dbname=tp;charset=utf8','deogracia','eisti0001' ,
                        //array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                        

                    //check verification if user is already subscribe
                    $check = "SELECT Email from ref_utilisateur Where Email=:mail ";
                    $prepcheck = $bdd->prepare($check);
                    $prepcheck-> bindValue(':mail',$lmail,PDO::PARAM_STR);
                  
                    $query = "INSERT INTO ref_utilisateur(FirstName,LastName,Email,Passwords)
                    VALUES('".$fname."','".$lname."','".$lmail."','".$hash."')";

           

                    /**if all goes well it is recorded refer to the page of thanks */
                    header('Location:ThanksLandingPage1.html');
                  
                    echo"Inscription reussie";
                  
                                deconnexion_bdd($bdd);
                    } else {
                        /**otherwise he resumes the inscription */
                    header('Location:index.html');
                    
                         }          
                    }
                            
                           
                                
                                    
 ?>
