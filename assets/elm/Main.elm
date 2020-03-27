module Main exposing (Model, Msg, init, main, subscriptions, update, view)

import Browser
import Html exposing (..)
import Json.Decode as D


main : Program D.Value Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type Model
    = NotYetDefined


init : D.Value -> ( Model, Cmd Msg )
init _ =
    ( NotYetDefined, Cmd.none )


type Msg
    = Msg1
    | Msg2


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg1 ->
            ( model, Cmd.none )

        Msg2 ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Browser.Document Msg
view model =
    { title = "Elm Stack"
    , body =
        [ div []
            [ text "Welcome to Elm!" ]
        ]
    }
