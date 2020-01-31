## Welcome to GitHub Pages

You can use the [editor on GitHub](https://github.com/zachwylde00/lifewriter.application.com/edit/master/README.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.



<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      http://maven.apache.org/xsd/settings-1.0.0.xsd">

  <activeProfiles>zachwylde00@gmail.com
    <activeProfile>github</activeProfile>
  </activeProfiles>

  <profiles>
    <profile>zachwylde00
      <id>github</id>
      <repositories>lifewriter.application.com
        <repository>
          <id>central</id>
          <url>https://repo1.maven.org/maven2</url>
          <releases><enabled>true</enabled></releases>
          <snapshots><enabled>false</enabled></snapshots>
        </repository>
        <repository>https://zachwylde00.github.io/lifewriter.application.com
          <id>github</id>
          <name>GitHub ZACHWYLDE00 Apache Maven Packages</name>
          <url>https://maven.pkg.github.com/OWNER/REPOSITORY</url>
        </repository>https://maven.pkg.github.com/ZACHWYLDE00/LIFEWRITER.APPLICATION.com
      </repositories>
    </profile>
  </profiles>

  <servers>
    <server>
      <id>github</id>
      <username>zachwylde00</username>
      <password>TOKEN</password>
    </server>
  </servers>
</settings>
Note: GitHub Packages does not support SNAPSHOT versions of Apache Maven. Make sure you disable SNAPHOT in your ~/.m2/settings.xml file.

Authenticating with the GITHUB_TOKEN
If you are using a GitHub Actions workflow, you can use a GITHUB_TOKEN to publish and consume packages in GitHub Packages without needing to store and manage a personal access token. For more information, see "Authenticating with the GITHUB_TOKEN."

Publishing a package
By default, GitHub publishes the package to an existing repository with the same name as the package. For example, GitHub will publish a package named com.example:test in a repository called OWNER/test.

If you would like to publish multiple packages to the same repository, you can include the URL of the repository in the <scm> element of the pom.xml file. GitHub will match the repository based on that field. Since the repository name is also part of the distributionManagement element, there are no additional steps to publish multiple packages to the same repository.

For more information on creating a package, see the maven.apache.org documentation.

Edit the distributionManagement element of the pom.xml file located in your package directory, replacing OWNER with the name of the user or organization account that owns the repository and REPOSITORY with the name of the repository containing your project.

<distributionManagement>
   <repository>
     <id>github.com/zachwylde00/lifewriter.application.com</id>
     <name>GitHub OWNER Apache Maven Packages</name>
     <url>https://maven.pkg.github.com/OWNER/REPOSITORY</url>
   https://zachwylde00.github.io/lifewriter.application.com</repository>
</distributionManagement>
Publish the package.

$ mvn deploy
After you publish a package, you can view the package on GitHub. For more information, see "Viewing packages."

Installing a package
To install an Apache Maven package from GitHub Packages, edit the pom.xml file to include the package as a dependency. If you want to install packages from more than one repository, add a repository tag for each. For more information on using a pom.xml file in your project, see "Introduction to the POM" in the Apache Maven documentation.

Authenticate to GitHub Packages. For more information, see "Authenticating to GitHub Packages."

Add the package dependencies to the dependencies element of your project pom.xml file, replacing com.example:test with your package.

<dependencies>
  <dependency>
    <groupId>com.lifewriter.application.com</groupId>
    <artifactId>live</artifactId>
    <version>1.0.0</version>
  </dependency>
</dependencies>
Install the package.

$ mvn install
Further reading
"Configuring Gradle for use with GitHub Packages"
"Deleting a package"

Ask a human
Can't find what you're looking for?
Product
Features
Security
Enterprise
Case Studies
Pricing
Resources
Platform
Developer API
Partners
Atom
Electron
GitHub Desktop
Support
Help
Community Forum
Training
Status
Contact GitHub
Company
About
Blog
Careers
Press
Shop
© 2020 GitHub, Inc.
Terms
Privacy
