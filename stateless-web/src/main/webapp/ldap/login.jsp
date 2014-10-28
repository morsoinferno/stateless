<%-- 
    Document   : login
    Created on : 26-10-2014, 11:48:08
    Author     : miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <style>
            .alert {
                padding: 8px 35px 8px 14px;
                margin-bottom: 18px;
                color: #c09853;
                text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
                background-color: #fcf8e3;
                border: 1px solid #fbeed5;
                -webkit-border-radius: 4px;
                -moz-border-radius: 4px;
                border-radius: 4px;
            }

            .alert-heading {
                color: inherit;
            }

            .alert .close {
                position: relative;
                top: -2px;
                right: -21px;
                line-height: 18px;
            }
            .alert-danger,
            .alert-error {
                color: #b94a48;
                background-color: #f2dede;
                border-color: #eed3d7;
            }
            html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
            article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
            ol,ul{list-style:none;margin:0px;padding:0px;}
            blockquote,q{quotes:none;}
            blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
            table{border-collapse:collapse;border-spacing:0;}
            /* start editing from here */
            a{text-decoration:none;}
            .txt-rt{text-align:right;}/* text align right */
            .txt-lt{text-align:left;}/* text align left */
            .txt-center{text-align:center;}/* text align center */
            .float-rt{float:right;}/* float right */
            .float-lt{float:left;}/* float left */
            .clear{clear:both;}/* clear float */
            .pos-relative{position:relative;}/* Position Relative */
            .pos-absolute{position:absolute;}/* Position Absolute */
            .vertical-base{	vertical-align:baseline;}/* vertical align baseline */
            .vertical-top{	vertical-align:top;}/* vertical align top */
            nav.vertical ul li{	display:block;}/* vertical menu */
            nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
            img{max-width:100%;}
            /*end reset*/
            /****-----start-body----****/
            body{
                background-color:#86B4CC;
            }
            .main{
                margin:7em auto 0;
                width: 30%;
            }
            .user {
                text-align: right;
                vertical-align: middle;
                margin-right: 5.2em;
            }
            .login{
                padding:2em 0;
            }
            .inset {
                position:relative;
                background: #fff;
                padding: 2em 2em;
                border-radius: 0.3em;
                -webkit-border-radius: 0.3em;
                -o-border-radius: 0.3em;
                -moz-border-radius: 0.3em;
            }
            .inset:before{
                content: '';
                width: 0;
                height: 0;
                border: 20px solid #FFF;
                border-top: 0 solid rgba(0, 0, 0, 0)!important;
                border-right: 13px solid rgba(0, 0, 0, 0)!important;
                border-left: 13px solid rgba(0, 0, 0, 0);
                left: 77.1%;
                top: -5.3%;
                position: absolute;
            }
            form span {
                display: block;
                font-size: 1em;
                color: #787878;
                padding-bottom: 5px;
                font-weight: 600;
                font-family: 'Open Sans', sans-serif;
            }
            input[type="text"],input[type="Password"] {
                padding: 9px;
                width: 90%;
                font-size: 1.1em;
                margin: 18px 0px;
                border: 2px solid#EAEEF1;
                color: #666666;
                background:#EAEEF1;
                font-family: 'Open Sans', sans-serif;
                font-weight:600;
                margin-left: 5px;
                outline:none;
                -webkit-transition: all 0.3s ease-out;
                -moz-transition: all 0.3s ease-out;
                -ms-transition: all 0.3s ease-out;
                -o-transition: all 0.3s ease-out;
                transition: all 0.3s ease-out;
            }
            input[type="text"]:hover,input[type="Password"]:hover,#active{
                background:#fff;
                border:2px solid #609EC3;
                outline:none;
            }
            .sign {
                padding: 10px 0;
            }
            .forget-pass {
                float: right;
            }
            .submit {
                padding: 2px 2px;
                float:left;
                margin-right: 11px;
            }
            .submit input[type="reset"]{
                background: #34495e;
            }
            .submit input[type="submit"]{
                background: #F06B37;
            }
            .submit input[type="submit"], .submit input[type="reset"]{
                border: none;
                outline: none;
                padding: 0.55em 1.3em 0.6em;
                cursor: pointer;
                font-family: 'Open Sans', sans-serif;
                color: #FFF;
                font-size: 0.9em;
                border-radius: 1.3em;
                -webkit-border-radius: 1.3em;
                -moz-border-radius: 1.3em;
                -o-border-radius: 1.3em;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
                font-weight: 600;
            }
            .submit input[type="submit"]:hover, .submit input[type="reset"]:hover{
                background:#62A0C4;
            }
            .forget{
                float:right;
            }
            .forget-pass a {
                float: right;
                color:#898888;
                font-size: 0.95em;
                margin-top: 13px;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
                font-weight: 600;
                font-family: 'Open Sans', sans-serif;
            }
            .forget-pass a:hover {
                text-decoration: underline;
            }
            .copy-right {
                text-align: center;
                width: 97%;
                margin: 2em auto 0;
            }
            .copy-right p {
                color: #FFF;
                font-size: 1em;
                font-family: 'Open Sans', sans-serif;
            }
            .copy-right p a {
                font-family: 'Open Sans', sans-serif;
                font-size: 1em;
                font-weight: 600;
                color: #1567A5;
                -webkit-transition: all 0.3s ease-out;
                -moz-transition: all 0.3s ease-out;
                -ms-transition: all 0.3s ease-out;
                -o-transition: all 0.3s ease-out;
                transition: all 0.3s ease-out;
            }
            .copy-right p a:hover {
                color:#fff;
            }
            /*----start-responsive design-----*/
            @media (max-width:1440px){
                .main {
                    width:33%;
                    margin: 7em auto 0;
                }
                .user {
                    margin-right: 4.2em;
                }
                .inset:before {
                    left: 80%;
                    top: -5.3%;
                }
            }
            @media (max-width:1366px){
                .main {
                    width:36%;
                }
                .inset:before {
                    left: 80%;
                    top: -5%;
                }
            }
            @media (max-width:1280px){
                .main {
                    width:40%;
                }
                .user {
                    margin-right: 5.2em;
                }
                .inset:before {
                    left: 78.3%;
                    top: -5.4%;
                }
                input[type="text"], input[type="Password"] {
                    padding: 9px;
                    width: 93%;
                }
            }
            @media (max-width:1024px){
                .main {
                    width:48%;
                    margin: 8em auto 0;
                }
                .inset:before {
                    left: 77.2%;
                    top: -5.4%;
                }
            }
            @media (max-width:768px){
                .main {
                    width:59%;
                }
                .inset:before {
                    left: 75.3%;
                    top: -5.4%;
                }
            }
            @media (max-width:640px){
                .main {
                    width:67%;
                }
                .inset:before {
                    left: 74.2%;
                    top: -5.4%;
                }
            }
            @media (max-width:480px){
                .main {
                    width:80%;
                    margin: 3em auto 0;
                }
                .user {
                    margin-right: 4.2em;
                }
                .inset:before {
                    left: 74.2%;
                    top: -5.4%;
                }
            }
            @media (max-width:320px){
                .main {
                    width: 97%;
                    margin: 2em auto 0;
                }
                .inset:before {
                    left: 67%;
                    top: -4.4%;
                }	
                .user {
                    margin-right: 4.2em;
                }
                .login {
                    padding: 1em 0;
                }
                .submit{
                    padding: 2px ;
                    text-align: center;
                    float:none;
                }
                .forget-pass {
                    float:none;
                    text-align:center;
                    margin-top: 15px
                }
                .forget-pass a {
                    float:none;
                }
                input[type="text"], input[type="Password"] {
                    padding: 6px;
                    margin: 9px 0px;
                }

            }

        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--webfonts-->
        <link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700|Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
        <!--//webfonts-->
    </head>

    <body>
        <div class="main">
            <div class="user">

            </div>
            <div class="login">
                <div class="inset">
                    <!-----start-main---->
                    <c:if test="${not empty param.error}">
                        <div class="alert alert-danger" role="alert">Nombre de usuario y/o contraseña incorrectos</div>
                    </c:if>
                    <form action="j_security_check" method=post>
                        <div>
                            <span><label>Nombre de Usuario</label></span>
                            <span><input type="text" class="textbox" id="active" name="j_username"></span>
                        </div>
                        <div>
                            <span><label>Contraseña</label></span>
                            <span><input type="password" class="password" name="j_password"></span>
                        </div>
                        <div class="sign">
                            <div class="submit">
                                <input type="submit" value="Iniciar Sesión" >
                                <input type="reset" value="Reiniciar Campos">
                            </div>
                            <!--                            <span class="forget-pass">
                                                            <a href="#">Forgot Password?</a>
                                                        </span>-->
                            <div class="clear"> </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-----//end-main---->
        </div>
    </body>
</html>
