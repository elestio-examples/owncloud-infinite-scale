# Owncloud CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/owncloud"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Owncloud Infinite Scale server with CI/CD on Elestio

<img src="owncloud.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can can open Owncloud UI here:

    URL: https://[CI_CD_DOMAIN]
    Login: root
    password: [ADMIN_PASSWORD]

# COLLABORA

If you want to use Collabora, click on Settings at the top left, and choose Market.
In the new window, find Collabora and install it.

<img src="./steps/step-01.png" style='width: 200px; max-width:100%;'/>

<img src="./steps/step-02.png" style='width: 600px; max-width:100%;'/>

Once installed, click on your nickname at the top right, and click on Settings.
On the left side, go to the Admin submenu and click on Additional.
In the Collabora Online Server field, enter this information:
https://[DOMAIN]:21905
Click Apply.

<img src="./steps/step-03.png" style='width: 200px; max-width:100%;'/>

<img src="./steps/step-04.png" style='width: 300px; max-width:100%;'/>

<img src="./steps/step-05.png" style='width: 600px; max-width:100%;'/>

# TRUSTED DOMAINS

If you want to use a custom domain, go to your Pipeline, then click on the Tools tab, then choose VS Code.

Once VS Code is opened, open the .env file, then change the values of DOMAIN and OWNCLOUD_TRUSTED_DOMAINS to your domain.

<img src="./steps/step-06.png" style='width: 600px; max-width:100%;'/>
<img src="./steps/step-07.png" style='width: 600px; max-width:100%;'/>

Click on the burger menu at the top left, then choose Terminal>New Terminal.

In the window that just opened, type:

    docker-compose down
    docker-compose up -d

<img src="./steps/step-08.png" style='width: 600px; max-width:100%;'/>

Close the window.

From this point, you will only be able to use Collabora with this domain.
