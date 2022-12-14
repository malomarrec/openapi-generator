% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/user_api.R
\docType{class}
\name{UserApi}
\alias{UserApi}
\title{User operations}
\format{
An \code{R6Class} generator object
}
\description{
petstore.User
}
\details{
OpenAPI Petstore

This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

The version of the OpenAPI document: 1.0.0
Generated by: https://openapi-generator.tech
}
\section{Methods}{

\describe{
\strong{ CreateUser } \emph{ Create user }
This can only be done by the logged in user.

\itemize{
\item \emph{ @param } user \link{User}

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 0 | successful operation


\item response headers :

\tabular{ll}{
}
}

\strong{ CreateUsersWithArrayInput } \emph{ Creates list of users with given input array }


\itemize{
\item \emph{ @param } user list( \link{User} )

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 0 | successful operation


\item response headers :

\tabular{ll}{
}
}

\strong{ CreateUsersWithListInput } \emph{ Creates list of users with given input array }


\itemize{
\item \emph{ @param } user list( \link{User} )

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 0 | successful operation


\item response headers :

\tabular{ll}{
}
}

\strong{ DeleteUser } \emph{ Delete user }
This can only be done by the logged in user.

\itemize{
\item \emph{ @param } username character

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 400 | Invalid username supplied


\item response headers :

\tabular{ll}{
}
\item status code : 404 | User not found


\item response headers :

\tabular{ll}{
}
}

\strong{ GetUserByName } \emph{ Get user by user name }


\itemize{
\item \emph{ @param } username character
\item \emph{ @returnType } \link{User} \cr

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 200 | successful operation

\item return type : User 
\item response headers :

\tabular{ll}{
}
\item status code : 400 | Invalid username supplied


\item response headers :

\tabular{ll}{
}
\item status code : 404 | User not found


\item response headers :

\tabular{ll}{
}
}

\strong{ LoginUser } \emph{ Logs user into the system }


\itemize{
\item \emph{ @param } username character
\item \emph{ @param } password character

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 200 | successful operation

\item return type : character 
\item response headers :

\tabular{ll}{
Set-Cookie \tab Cookie authentication key for use with the &#x60;api_key&#x60; apiKey authentication. \cr
X-Rate-Limit \tab calls per hour allowed by the user \cr
X-Expires-After \tab date in UTC when token expires \cr
}
\item status code : 400 | Invalid username/password supplied


\item response headers :

\tabular{ll}{
}
}

\strong{ LogoutUser } \emph{ Logs out current logged in user session }


\itemize{

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 0 | successful operation


\item response headers :

\tabular{ll}{
}
}

\strong{ UpdateUser } \emph{ Updated user }
This can only be done by the logged in user.

\itemize{
\item \emph{ @param } username character
\item \emph{ @param } user \link{User}

\item On encountering errors, an error of subclass ApiException will be thrown.

\item status code : 400 | Invalid user supplied


\item response headers :

\tabular{ll}{
}
\item status code : 404 | User not found


\item response headers :

\tabular{ll}{
}
}

}
}

\examples{
\dontrun{
####################  CreateUser  ####################

library(petstore)
var.user <- User$new() # User | Created user object

#Create user
api.instance <- UserApi$new()

#Configure API key authorization: api_key
api.instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';

result <- tryCatch(
            api.instance$CreateUser(var.user),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


####################  CreateUsersWithArrayInput  ####################

library(petstore)
var.user <- [User$new()] # array[User] | List of user object

#Creates list of users with given input array
api.instance <- UserApi$new()

#Configure API key authorization: api_key
api.instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';

result <- tryCatch(
            api.instance$CreateUsersWithArrayInput(var.user),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


####################  CreateUsersWithListInput  ####################

library(petstore)
var.user <- [User$new()] # array[User] | List of user object

#Creates list of users with given input array
api.instance <- UserApi$new()

#Configure API key authorization: api_key
api.instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';

result <- tryCatch(
            api.instance$CreateUsersWithListInput(var.user),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


####################  DeleteUser  ####################

library(petstore)
var.username <- 'username_example' # character | The name that needs to be deleted

#Delete user
api.instance <- UserApi$new()

#Configure API key authorization: api_key
api.instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';

result <- tryCatch(
            api.instance$DeleteUser(var.username),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


####################  GetUserByName  ####################

library(petstore)
var.username <- 'username_example' # character | The name that needs to be fetched. Use user1 for testing.

#Get user by user name
api.instance <- UserApi$new()

result <- tryCatch(
            api.instance$GetUserByName(var.username),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# deserialized response object
response.object <- result$content
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


####################  LoginUser  ####################

library(petstore)
var.username <- 'username_example' # character | The user name for login
var.password <- 'password_example' # character | The password for login in clear text

#Logs user into the system
api.instance <- UserApi$new()

result <- tryCatch(
            api.instance$LoginUser(var.username, var.password),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# deserialized response object
response.object <- result$content
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


####################  LogoutUser  ####################

library(petstore)

#Logs out current logged in user session
api.instance <- UserApi$new()

#Configure API key authorization: api_key
api.instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';

result <- tryCatch(
            api.instance$LogoutUser(),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


####################  UpdateUser  ####################

library(petstore)
var.username <- 'username_example' # character | name that need to be deleted
var.user <- User$new() # User | Updated user object

#Updated user
api.instance <- UserApi$new()

#Configure API key authorization: api_key
api.instance$api_client$api_keys['api_key'] <- 'TODO_YOUR_API_KEY';

result <- tryCatch(
            api.instance$UpdateUser(var.username, var.user),
            ApiException = function(ex) ex
         )
# In case of error, print the error object
if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
# response headers
response.headers <- result$response$headers
# response status code
response.status.code <- result$response$status_code
}


}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{api_client}}{Handles the client-server communication.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-UserApi-new}{\code{UserApi$new()}}
\item \href{#method-UserApi-CreateUser}{\code{UserApi$CreateUser()}}
\item \href{#method-UserApi-CreateUserWithHttpInfo}{\code{UserApi$CreateUserWithHttpInfo()}}
\item \href{#method-UserApi-CreateUsersWithArrayInput}{\code{UserApi$CreateUsersWithArrayInput()}}
\item \href{#method-UserApi-CreateUsersWithArrayInputWithHttpInfo}{\code{UserApi$CreateUsersWithArrayInputWithHttpInfo()}}
\item \href{#method-UserApi-CreateUsersWithListInput}{\code{UserApi$CreateUsersWithListInput()}}
\item \href{#method-UserApi-CreateUsersWithListInputWithHttpInfo}{\code{UserApi$CreateUsersWithListInputWithHttpInfo()}}
\item \href{#method-UserApi-DeleteUser}{\code{UserApi$DeleteUser()}}
\item \href{#method-UserApi-DeleteUserWithHttpInfo}{\code{UserApi$DeleteUserWithHttpInfo()}}
\item \href{#method-UserApi-GetUserByName}{\code{UserApi$GetUserByName()}}
\item \href{#method-UserApi-GetUserByNameWithHttpInfo}{\code{UserApi$GetUserByNameWithHttpInfo()}}
\item \href{#method-UserApi-LoginUser}{\code{UserApi$LoginUser()}}
\item \href{#method-UserApi-LoginUserWithHttpInfo}{\code{UserApi$LoginUserWithHttpInfo()}}
\item \href{#method-UserApi-LogoutUser}{\code{UserApi$LogoutUser()}}
\item \href{#method-UserApi-LogoutUserWithHttpInfo}{\code{UserApi$LogoutUserWithHttpInfo()}}
\item \href{#method-UserApi-UpdateUser}{\code{UserApi$UpdateUser()}}
\item \href{#method-UserApi-UpdateUserWithHttpInfo}{\code{UserApi$UpdateUserWithHttpInfo()}}
\item \href{#method-UserApi-clone}{\code{UserApi$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-new"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new UserApi.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$new(api_client)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{api_client}}{An instance of API client.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-CreateUser"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-CreateUser}{}}}
\subsection{Method \code{CreateUser()}}{
Create user
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$CreateUser(user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{user}}{Created user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
void
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-CreateUserWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-CreateUserWithHttpInfo}{}}}
\subsection{Method \code{CreateUserWithHttpInfo()}}{
Create user
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$CreateUserWithHttpInfo(user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{user}}{Created user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (void) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-CreateUsersWithArrayInput"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-CreateUsersWithArrayInput}{}}}
\subsection{Method \code{CreateUsersWithArrayInput()}}{
Creates list of users with given input array
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$CreateUsersWithArrayInput(user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{user}}{List of user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
void
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-CreateUsersWithArrayInputWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-CreateUsersWithArrayInputWithHttpInfo}{}}}
\subsection{Method \code{CreateUsersWithArrayInputWithHttpInfo()}}{
Creates list of users with given input array
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$CreateUsersWithArrayInputWithHttpInfo(user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{user}}{List of user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (void) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-CreateUsersWithListInput"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-CreateUsersWithListInput}{}}}
\subsection{Method \code{CreateUsersWithListInput()}}{
Creates list of users with given input array
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$CreateUsersWithListInput(user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{user}}{List of user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
void
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-CreateUsersWithListInputWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-CreateUsersWithListInputWithHttpInfo}{}}}
\subsection{Method \code{CreateUsersWithListInputWithHttpInfo()}}{
Creates list of users with given input array
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$CreateUsersWithListInputWithHttpInfo(user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{user}}{List of user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (void) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-DeleteUser"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-DeleteUser}{}}}
\subsection{Method \code{DeleteUser()}}{
Delete user
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$DeleteUser(username, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{The name that needs to be deleted}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
void
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-DeleteUserWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-DeleteUserWithHttpInfo}{}}}
\subsection{Method \code{DeleteUserWithHttpInfo()}}{
Delete user
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$DeleteUserWithHttpInfo(username, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{The name that needs to be deleted}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (void) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-GetUserByName"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-GetUserByName}{}}}
\subsection{Method \code{GetUserByName()}}{
Get user by user name
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$GetUserByName(username, data_file = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{The name that needs to be fetched. Use user1 for testing.}

\item{\code{data_file}}{(optional) name of the data file to save the result}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
User
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-GetUserByNameWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-GetUserByNameWithHttpInfo}{}}}
\subsection{Method \code{GetUserByNameWithHttpInfo()}}{
Get user by user name
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$GetUserByNameWithHttpInfo(username, data_file = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{The name that needs to be fetched. Use user1 for testing.}

\item{\code{data_file}}{(optional) name of the data file to save the result}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (User) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-LoginUser"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-LoginUser}{}}}
\subsection{Method \code{LoginUser()}}{
Logs user into the system
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$LoginUser(username, password, data_file = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{The user name for login}

\item{\code{password}}{The password for login in clear text}

\item{\code{data_file}}{(optional) name of the data file to save the result}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
character
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-LoginUserWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-LoginUserWithHttpInfo}{}}}
\subsection{Method \code{LoginUserWithHttpInfo()}}{
Logs user into the system
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$LoginUserWithHttpInfo(username, password, data_file = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{The user name for login}

\item{\code{password}}{The password for login in clear text}

\item{\code{data_file}}{(optional) name of the data file to save the result}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (character) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-LogoutUser"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-LogoutUser}{}}}
\subsection{Method \code{LogoutUser()}}{
Logs out current logged in user session
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$LogoutUser(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
void
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-LogoutUserWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-LogoutUserWithHttpInfo}{}}}
\subsection{Method \code{LogoutUserWithHttpInfo()}}{
Logs out current logged in user session
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$LogoutUserWithHttpInfo(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (void) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-UpdateUser"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-UpdateUser}{}}}
\subsection{Method \code{UpdateUser()}}{
Updated user
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$UpdateUser(username, user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{name that need to be deleted}

\item{\code{user}}{Updated user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
void
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-UpdateUserWithHttpInfo"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-UpdateUserWithHttpInfo}{}}}
\subsection{Method \code{UpdateUserWithHttpInfo()}}{
Updated user
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$UpdateUserWithHttpInfo(username, user, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{username}}{name that need to be deleted}

\item{\code{user}}{Updated user object}

\item{\code{...}}{Other optional arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
API response (void) with additional information such as HTTP status code, headers
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserApi-clone"></a>}}
\if{latex}{\out{\hypertarget{method-UserApi-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserApi$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
