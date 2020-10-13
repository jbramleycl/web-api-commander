# RESO Web API Commander

[![CodeFactor](https://www.codefactor.io/repository/github/resostandards/web-api-commander/badge)](https://www.codefactor.io/repository/github/resostandards/web-api-commander)  ![Java CI with Gradle](https://github.com/RESOStandards/web-api-commander/workflows/Java%20CI%20with%20Gradle/badge.svg?branch=master)

The RESO Web API Commander is a command line Java application that uses
the Apache Olingo library to provide OData Client functionality as well as RESO Web API and Data Dictionary Certification.

- [Getting Started](#getting-started)
- [Using the Commander as a Web API Client](#using-the-commander-as-a-web-api-client)
- [Display Help](#display-help)
- [Authentication](#authentication)
- [Getting Metadata](#getting-metadata)
- [Validating Metadata stored in an EDMX file](#validating-metadata-stored-in-an-edmx-file)
- [Getting results from a given `uri`](#getting-results-from-a-given-uri)
- [Getting raw results from a given `uri`](#getting-raw-results-from-a-given-uri)
- [Converting metadata to Open API 3 format](#converting-metadata-to-open-api-3-format)
- [Running RESOScript Files](#running-resoscript-files)
- [Automated Web API Testing (beta)](#automated-web-api-testing-beta)
  * [Cucumber Feature Specifications](#cucumber-feature-specifications)
  * [Testing Environment](#testing-environment)
  * [Web API Usage](#web-api-usage)
  * [Running Web API Tests with the Gradle Wrapper](#running-web-api-tests-with-the-gradle-wrapper)
  * [Convenience Methods for Web API 1.0.2 Server Core Certification](#convenience-methods-for-web-api-102-server-core-certification)
  * [Web API Program Output](#web-api-program-output)
- [Docker](#docker)
- [Logging](#logging)
- [Gradle Commands](#gradle-commands)
- [Coming Soon](#coming-soon)

## Getting Started

There are essentially two ways to run the Commander:
* [As a Web API Client](#using-the-commander-as-a-web-api-client) 
* As an automated testing tool for the [Web API](#web-api-usage) or [Data Dictionary](#data-dictionary-usage)


### Using the Commander as a Web API Client 

Your operating system probably already has Java installed, but you need 1.8.0 to run the Commander. 

To check your version, type: 

```
$ java -version
```

in your operating system's terminal and you will see something similar to the following: 

```
$ java -version
openjdk version "1.8.0_242"
OpenJDK Runtime Environment (build 1.8.0_242-8u242-b08-0ubuntu3~19.10-b08)
OpenJDK 64-Bit Server VM (build 25.242-b08, mixed mode)
```

If you don't see something similar to this, with 1.8.0, or an error, you may need to download a Java SDK Environment. 

[Open JDK is recommended](https://openjdk.java.net/install/index.html).

[Oracle's SE Development kit may also be used](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html), but there may be additional licensing terms to accept.

Once you have done this, you can [download the Commander JAR file](https://github.com/RESOStandards/web-api-commander/tree/master/build/libs) 
and use it for the operations which support using the Commander as a Web API client. 
For automated testing, see [here](#automated-web-api-testing-beta) instead. 

## Display Help

Assuming [you have downloaded `web-api-commander.jar`](https://github.com/RESOStandards/web-api-commander/tree/master/build/libs) at this point, help is available from the command line by passing `--help` OR just passing no arguments. 

```
/path/to/web-api-commander$ java -jar web-api-commander.jar
```

Doing so displays the following information:

```
usage: java -jar web-api-commander
    --bearerToken <b>       Bearer token to be used with the request.
    --contentType <t>       Results format: JSON (default),
                            JSON_NO_METADATA, JSON_FULL_METADATA, XML.
    --entityName <n>        The name of the entity to fetch, e.g.
                            Property.
    --getEntities           Executes GET on <uri> using the given
                            <bearerToken> and optional <serviceRoot> when
                            --useEdmEnabledClient is specified. Optionally
                            takes a <limit>, which will fetch that number
                            of results. Pass --limit -1 to fetch all
                            results.
    --getMetadata           Fetches metadata from <serviceRoot> using
                            <bearerToken> and saves results in
                            <outputFile>.
    --help                  print help
    --inputFile <i>         Path to input file.
    --limit <l>             The number of records to fetch, or -1 to fetch
                            all.
    --outputFile <o>        Path to output file.
    --runRESOScript         Runs commands in RESOScript file given as
                            <inputFile>.
    --saveRawGetRequest     Performs GET from <requestURI> using the given
                            <bearerToken> and saves output to
                            <outputFile>.
    --serviceRoot <s>       Service root URL on the host.
    --uri <u>               URI for raw request. Use 'single quotes' to
                            enclose.
    --useEdmEnabledClient   present if an EdmEnabledClient should be used.
    --validateMetadata      Validates previously-fetched metadata in the
                            <inputFile> path.

```

When using commands, if arguments aren't provided, feedback will be displayed in the terminal, as well as the help screen, 
which will show how to pass each required argument. 

## Authentication
When using the RESO Commander from the terminal, bearer tokens are the currently-supported authentication mechanism. 
Please see subsequent sections for how to use bearer tokens to accomplish tasks other than fully-automated testing, 
[discussed elsewhere in this README](#automated-web-api-testing-beta).

## Getting Metadata
To get metadata, use the `--getMetadata` argument with the following 
options:

```
$ java -jar web-api-commander.jar --getMetadata --serviceRoot <s> --bearerToken <b> --outputFile <o>
```

where `serviceRoot` is the path to the root of the OData WebAPI server.

Assuming everything goes well, metadata will be retrieved from the host 
and written to the provided `--outputFile`.

**Note**: additional validation is done after metadata have been received. 
Errors in metadata won't cause the program to terminate, but validation 
information will be displayed. Also, it's worth mentioning that some
of the validation error messages "out-of-the-box" from the Olingo
Library we're using to validate with can be pretty cryptic. Please
open an issue if you find things that need better explanations. 


## Validating Metadata stored in an EDMX file
Sometimes it's useful to validate an already-downloaded EDMX file. 

Since parsing EDMX is an incremental process, validation terminates 
_each time_ invalid items are encountered. Therefore, the workflow for 
correcting an EDMX document that contains errors would be to run the 
Commander repeatedly, fixing errors that are encountered along the way.

To validate metadata that's already been downloaded, call the Web API 
Commander with the following options:

```
$ java -jar web-api-commander.jar --validateMetadata --inputFile <i>
```

where `inputFile` is the path to your EDMX file. Errors will be logged 
according to the `log4j.properties` file used at runtime. 

## Getting results from a given `uri`

OData offers additional options for requesting data from a WebAPI server 
beyond just receiving the raw server response (shown in the next example).

In this case, the appropriate action is: `--getEntities`, which can be 
called as follows:

```
$ java -jar web-api-commander.jar --getEntities --uri <u> --bearerToken <b> --outputFile <o>
``` 

Make sure that any `uri` containing spaces or special characters is 
wrapped in 'single quotes'. 

When using the `--useEdmEnabledClient` option, results will be verified 
against Server metadata after being downloaded. If this option is chosen, 
then `--serviceRoot` is required so that the Web API Commander can pull 
the Server's metadata in addition to the results from the given `--uri`

The `getEntitySet` action also supports the `--contentType` option, 
which will change how results are written. Currently supported options 
are: `JSON`, `JSON_NO_METADATA`, `JSON_FULL_METADATA`, and `XML`.

Finally, there's an "experimental" auto-paging option which allows 
all records to be pulled from the Server. In order to use this option,
pass `--limit -1` when using `--getEntities`. In the near future,
an auto-resume feature will be added so that if something happens 
during transfer, the process will resume from the last record consumed.
 

## Getting raw results from a given `uri`

If additional processing using the OData Olingo library is not needed, 
raw requests may be issued against the server instead.

The `--saveRawGetRequest` action writes the raw response from a GET 
request to the given `--uri` from the Web API server directly to the 
given `--outputFile`.

```
$ java -jar web-api-commander.jar --saveRawGetRequest --uri <u> --bearerToken <b> --outputFile <o>
```

Results are not checked against Server Metadata and are not written in 
any specific OData format.

Make sure that any `uri` containing spaces or special characters is 
wrapped in 'single quotes'. 

Note: this option is currently being rolled into `--getEntities` with 
`--contentType RAW`. Documentation will be updated once the change has 
been made.
  

## Converting metadata to Open API 3 format
See documentation regarding running the [nodejs-based tools in odata-openapi/lib/README.md](odata-openapi/lib/README.md).

## Running RESOScript Files
The Web API Commander is able to run RESO's XML-based scripting format, otherwise known as a RESOScript.

In order to run an RESOScript file, use a command similar to the following:

```
$ java -jar out/web-api-commander.jar --runRESOScript --i /path/to/your/inputFile --useEdmEnabledClient
```

Notice that the EDM Enabled client has been requested in the above command. This turns on strict OData checking, which 
performs additional validation on query strings as well as schema validation on responses, among other things. 
This feature is optional when using the `--runRESOScript` option, and may be omitted. The recommendation is to use it.

When executing the Web API Commander, a results directory will be created as a sibling
to the RESOScript file being run, with the directory name being generated from the RESOScript filename
and the current timestamp. 

Within this directory will be a file for each RESOScript request that was run,
and those that generated errors will have ".ERROR" appended to them. Error files contain the request that 
was made as well as the Java exception that was thrown, which most frequently comes from the underlying
OLingo library and provides a sufficient amount of information to determine what occurred with the query.

For those wanting more information, a `log4j.properties` file may be created (as shown below), or you may 
use the DEBUG build of the application located in `/build/libs/` identified by `-DEBUG` in the Commander jar's file name.

RESOScript files contain zero or more Settings, Parameters, and Requests. For example:
```xml
<?xml version="1.0" encoding="utf-8" ?>
   <OutputScript>
     <ClientSettings>
       <ServerName></ServerName>
       <ServerId></ServerId>
       <WebAPIURI></WebAPIURI>
       <AuthorizationURI></AuthorizationURI>
       <TokenURI></TokenURI>
       <RedirectURI></RedirectURI>
       <AuthenticationType></AuthenticationType>
       <BearerToken></BearerToken>
       <ClientIdentification></ClientIdentification>
       <ClientSecret></ClientSecret>
       <ClientScope></ClientScope>
     </ClientSettings>
     <Parameters>
       <Parameter Name="YourEndpointUrl" Value="https://yourserver.com/api?$filter=..." />
     </Parameters>
     <Requests>
       <Request OutputFile="yourEndpointUrlResponse.json"         Url="*Parameter_YourEndpointUrl*" />
       <!-- ... additional requests -->    
     </Requests>
   </OutputScript>
```

The XML DTD for this schema is as follows:

```dtd
<!DOCTYPE OutputScript [
  <!ELEMENT OutputScript (RESOScriptVersion|ClientSettings|Parameters|Requests)*>
  <!ELEMENT RESOScriptVersion (#PCDATA)>
  <!ELEMENT ClientSettings (WebAPIURI|AuthenticationType|BearerToken|ClientIdentification|ClientSecret|TokenURI|ClientScope)*>
  <!ELEMENT WebAPIURI (#PCDATA)>
  <!ELEMENT AuthenticationType (#PCDATA)>
  <!ELEMENT BearerToken (#PCDATA)>
  <!ELEMENT ClientIdentification (#PCDATA)>
  <!ELEMENT ClientSecret (#PCDATA)>
  <!ELEMENT TokenURI (#PCDATA)>
  <!ELEMENT ClientScope (#PCDATA)>
  <!ELEMENT Parameters (Parameter)*>
  <!ELEMENT Parameter (#PCDATA)>
  <!ATTLIST Parameter
    Name CDATA #REQUIRED
    Value CDATA #REQUIRED>
  <!ELEMENT Requests (Request)*>
  <!ELEMENT Request (#PCDATA)>
  <!ATTLIST Request
    OutputFile CDATA #REQUIRED
    RequestId CDATA #REQUIRED
    Url CDATA #REQUIRED>
  ]>
```

## Automated Web API Testing (beta)

Currently in development is the ability for the Commander to be able to perform fully-automated Web API testing, 
upon being provided a valid RESOScript file with parameters for the given server. 
See [the generic Web API Core RESOScript template for more info](sample-web-api-server.core.1.0.2.resoscript).

### Cucumber Feature Specifications

[Cucumber](https://cucumber.io) is being used to describe acceptance criteria in a higher-level DSL
rather than encapsulating all of the test logic code. Cucumber's DSL is called [Gherkin](https://cucumber.io/docs/gherkin/) 
and essentially allows backing test code to be organized in a logical manner that makes sense to analysts as well as 
programmers.

Testing output during runtime has been designed to be easy to read and during each step, the relevant 
output for the step will be displayed in the terminal or in an IDE if you have chosen to use the testing tool 
there. This can often be useful if debugging tests as a developer can step through backing test code as it's running
and inspect requests and responses in a controlled manner. 

### Testing Environment

Under the hood, [Gradle](https://gradle.org/) is being used for automation. It works across multiple platforms 
and is friendly with both Docker and Cucumber so that tests may be automated on CI/CD platforms such as Jenkins, 
Circle CI, Travis, or similar, and emit standard system codes during regression testing. 
 
It also provides pleasing command line interaction, and plays well with Cucumber by supporting the 
ability to run individual or multiple tests using tags.

### Web API Usage

The Commander may be run in automated testing mode for a Web API 1.0.2 Server Certification using a terminal. 
You do not need to use the Commander JAR file mentioned elsewhere in this step. 
Instead, you will run the tests using Gradle for automation against a clean copy of the latest Commander code.

You will need to download the source code so you can run Gradle in the root of the directory. 
This assumes that you also have Java 8 (1.8.0) installed, as mentioned elsewhere in this [`README`](#getting-started).

First, change into the directory you want to work in and clone the Commander repository. 
You will need to have Git installed. 
Chances are you already do, to check, open a command line and type `git` and if it's present, 
it will print some info about the app. If not, [there are instructions here](https://git-scm.com/downloads).

##### MacOS or Linux
```
$ git clone https://github.com/RESOStandards/web-api-commander.git
```

##### Windows
```
C:\> git clone https://github.com/RESOStandards/web-api-commander.git
```

This will clone the repository into a directory called web-api-commander relative to whatever directory you're currently in, 
which also means you'll have a fresh copy of the latest code to execute. 

To refresh the code after you have downloaded it, issue the command `$ git pull` in the root of the directory that was just created. 
 
### Running Web API Tests with the Gradle Wrapper
The [Gradle wrapper](https://docs.gradle.org/current/userguide/gradle_wrapper.html) provides a convenient way to automatically install Gradle when running tests. 

After you have cloned the repository, as shown in the previous step, change into the directory containing 
the source code from GitHub. Convenience methods have been provided for the various certification tasks. 

Prior to using the Commander for automated testing, you need to ensure your RESOScript has been created. 
For Web API 1.0.2 Server Core Certification, use [this resoscript](sample-web-api-server.core.1.0.2.resoscript) as a template. 
 

### Convenience Methods for Web API 1.0.2 Server Certification
While you may use tags to filter tests as you choose, explained in the next section, it's convenient
to be able to run a predefined set of tests Web API Core Certification. 

These tasks will also produce reports in the local `build` directory, named according to which test you ran. 

#### Core Certification

This will run the Core tests against the Web API 1.0.2 Server provided as `WebAPIURI` in your `web-api-server.core.1.0.2.resoscript` file.

##### MacOS or Linux
```
$ ./gradlew testWebAPIServerCore_1_0_2 -DpathToRESOScript=/path/to/your.web-api-server.core.1.0.2.resoscript -DshowResponses=true
```

##### Windows
```
C:\path\to\web-api-commander> gradlew testWebAPIServerCore_1_0_2 -DpathToRESOScript=C:\path\to\your.web-api-server.core.1.0.2.resoscript -DshowResponses=true
```

*Note: the first time you run these tasks, they will take some time as the environment must be configured and 
code is being compiled from the contents of the source directory downloaded in the previous step. 

#### Advanced feature: Tag Filtering 
You may also filter by tags. These are the items in the Cucumber .feature files prefixed by an `@` symbol. Expressions 
may also be used with tags. See the [Cucumber Documentation](https://cucumber.io/docs/cucumber/api/#tags) for more information. 

##### MacOS or Linux
```
$ gradle testWebAPIServerCore_1_0_2 -DpathToRESOScript=/path/to/your.web-api-server.core.1.0.2.resoscript -Dcucumber.filter.tags="@metadata"
```

##### Windows
```
C:\path\to\web-api-commander> gradlew.bat testWebAPIServerCore_1_0_2 -DpathToRESOScript=C:\path\to\your.web-api-server.core.1.0.2.resoscript -Dcucumber.filter.tags="@metadata"
```

This would run only the tests marked as `@metadata` in the 
[Web API Server 1.0.2 `.feature` file](./src/main/java/org/reso/certification/features/web-api/web-api-server.core.1.0.2.feature).


There is still some "glue code" to back the [test descriptions 
in `.feature` files](./src/main/java/org/reso/certification/features), but it is greatly optimized by the use 
of [cucumber-jvm](https://github.com/cucumber/cucumber-jvm), which has support for the reuse of backing Java 
code to cut down on copypasta test development.

The backing test code is done using [JUnit5](https://junit.org/junit5/). Normally, only those who are contributing 
test code should need to know about the implementation details of how tests are run. 

Libraries necessary for the Commander to run are included in the [`web-api-commander.jar`](https://github.com/RESOStandards/web-api-commander/blob/master/build/libs/web-api-commander.jar) file, aside from Gradle, which may either be installed on the local machine, or used within a Docker container (coming soon).

*Note*: tests are currently tagged with their Web API version implicitly being 1.0.3, such as `@REQ-WA103-END3`, 
but the tests currently being run on the server for Web API 1.0.2 is the backwards-compatible subset of 
Web API 1.0.3 tests. 

### Web API Program Output

A sample of the runtime terminal output follows:

```gherkin
> Task :testWebApiServer_1_0_2_Core

@REQ-WA103-END3 @2.4.1 @metadata
Scenario: REQ-WA103-END3 - Request and Validate Server Metadata                                            

Using RESOScript: ./web-api-server.core.1.0.2.resoscript
  Given a RESOScript file was provided                                                                     

RESOScript loaded successfully!
  And Client Settings and Parameters were read from the file                                               

Bearer token loaded... first 4 characters: test
Service root is: https://api.yourserver.com/OData
  And a test container was successfully created from the given RESOScript                                  

Authentication Type: authorization_code
  And the test container uses an authorization_code or client_credentials for authentication               

Requesting XML Metadata from service root at: https://api.yourserver.com/OData
  When XML Metadata are requested from the service root in "ClientSettings_WebAPIURI"                      

Asserted Response Code: 200, Server Response Code: 200
  Then the server responds with a status code of 200                                                       

Reported OData-Version header value: '4.0'
  And the server has an OData-Version header value of "4.0" or "4.01"                                      

Validating XML Metadata response to ensure it's valid XML and matches OASIS OData XSDs...
See: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/schemas/
XMLMetadata string is valid XML!
  And the XML Metadata response is valid XML                                                               

Validating XML Metadata response to ensure it's valid XML and matches OASIS OData XSDs...
See: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/schemas/
XMLMetadata string is valid XML!
XML Metadata is valid!
Edm Metadata is valid!
  And the XML Metadata returned by the server are valid                                                    

  And the XML Metadata returned by the server contains Edm metadata                                        

  And the Edm metadata returned by the server are valid                                                    

Found Default Entity Container: 'Default'
  And the metadata contains a valid service document                                                       

Resource Name: Property
Allowed Resources: Property, Member, Office, Contacts, ContactListings, HistoryTransactional, InternetTracking, Media, OpenHouse, OUID, Prospecting, Queue, Rules, SavedSearch, Showing, Teams
  And the given "Parameter_EndpointResource" resource exists within "Parameter_DD17_WellKnownResourceList" 

Found EntityContainer for the given resource: 'Property'
  And the metadata contains the "Parameter_EndpointResource" resource                                      

Searching the default entity container for one of the following Standard Resources: Property, Member, Office, Media
Standard Resource Names requirement met!
  And the metadata contains at least one resource from "Parameter_WebAPI102_RequiredResourceList"          


1 Scenarios (1 passed)
15 Steps (15 passed)
0m4.093s       
```

This shows configuration parameters, requests, and responses in a lightweight-manner. 

Detailed information will be added to a local `./commander.log` file at runtime.

## Automated Data Dictionary Testing (In Development)
Note that this feature is in development and not ready for use. Please contact josh@reso.org if you'd like to help
with the development process. 

----

### Gradle Commands

The list of available gradle commands can be shown by typing the following in the console: 

```
$ gradle --help
```

These commands should not be necessary for the normal use of the Commander. There are a handful that are, however, 

* `--continue                Continue task execution after a task failure.`
* `-S, --full-stacktrace     Print out the full (very verbose) stacktrace for all exceptions.`
* `-s, --stacktrace          Print out the stacktrace for all exceptions.`
* `-t, --continuous          Enables continuous build. Gradle does not exit and will re-execute tasks when task file inputs change. [incubating]`


## Docker

A [Dockerfile](./Dockerfile) has been provided to dockerize the application. 
This can be used for CI/CD environments such as Jenkins or TravisCI. The following command will build an image for you:


### Commander Features Other Than Automated Web API Testing
```
$ docker build -t web-api-commander .
```

The usage for the docker container is the same for `web-api-commander.jar` presented above.

```
$ docker run -it web-api-commander --help
```

If you have input files you may need to mount your filesystem into the docker container

```
$ docker run -it -v $PWD:/app web-api-commander --validateMetadata --inputFile <pathInContainer>
```

### Automated Web API Testing

You may also run the tests in a Docker container locally by issuing one of the following commands. 
Docker must be running on your local machine.

#### MacOS or Linux All-In-One Commands


##### Core
```
cd ~; \
rm -rf commander-tmp/; \
mkdir commander-tmp; \
cd commander-tmp; \
git clone https://github.com/RESOStandards/web-api-commander.git; \
cd web-api-commander; \
docker run --rm -u gradle -v "$PWD":/home/gradle/project -v /path/to/your/resoscripts:/home/gradle/project/resoscripts -w /home/gradle/project gradle gradle testWebAPIServer_1_0_2_Core -DpathToRESOScript=/home/gradle/project/resoscripts/your.web-api-server.core.1.0.2.resoscript -DshowResponses=true
```

Note that this will create a directory in your home directory for the project, and build artifacts and the log will be placed in that directory, 
which is also where you will end up after runtime.


#### Windows All-In-One WIP

##### Core

```
cd C:\;mkdir commander-tmp;cd commander-tmp;git clone https://github.com/RESOStandards/web-api-commander.git;cd web-api-commander; docker run --rm -u gradle -v C:\current\path\web-api-commander:/home/gradle/project -v C:\path\to\your\resoscripts:/home/gradle/project/resoscripts -w /home/gradle/project gradle gradle testWebAPIServer_1_0_2_Core -DpathToRESOScript=/home/gradle/project/resoscripts/your.web-api-server.core.1.0.2.resoscript -DshowResponses=true
```

---
## Logging

In the current version of the Commander, two logs are produced. One is outputted in the terminal at `INFO` level during runtime through `stdout`. A detailed log called `commander.log` will be outputted at runtime and will contain details down to the wire requests. 

Log4j 2 is being used under the hood for logging, and a configuration file may be found [here](https://github.com/RESOStandards/web-api-commander/blob/master/src/main/resources/log4j2.xml). Multiple outputs may be used, including posting to collectors or sending emails. [See Log4j 2 docs for more info](https://logging.apache.org/log4j/2.x/manual/index.html). 

Gradle may be debugged as well, and additional gradle commands such as turning on full gradle step logging are discussed in [Gradle Commands](#gradle-commands).

---

Please contact [josh@reso.org](mailto:josh@reso.org) with any questions, bug reports, or feature requests.

## Coming Soon
* Fully-automated Data Dictionary certification (in-progress)
* Support for authentication options in addition to Bearer tokens (Client Credentials in beta, please email for more info).
* Parallel fetch for replication
* Job Scheduling
* Excel export
