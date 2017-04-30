port module Mammut exposing (main)

import Html


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { login : Maybe String
    , password : Maybe String
    }


init : ( Model, Cmd Msg )
init =
    ( { login = Nothing, password = Nothing }, Cmd.none )


type Msg
    = Login
    | GetTimeline


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Login ->
            ( model, Cmd.none )

        GetTimeline ->
            ( model, Cmd.none )


view : Model -> Html.Html Msg
view model =
    Html.text "toto"


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
