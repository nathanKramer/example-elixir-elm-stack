module Main exposing (Model, Msg, init, main, subscriptions, update, view)

import Browser
import Element as E exposing (Element)
import Json.Decode as D


main : Program D.Value Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type AppModel
    = HelloWorld String


type alias Model =
    { title : String
    , app : AppModel
    }


init : D.Value -> ( Model, Cmd Msg )
init _ =
    ( { title = "Hello World", app = HelloWorld "Welcome to Elm!" }, Cmd.none )


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
subscriptions _ =
    Sub.none


view : Model -> Browser.Document Msg
view model =
    { title = model.title
    , body =
        [ E.layout [] <|
            let
                attributes =
                    []
            in
            E.el
                attributes
            <|
                case model.app of
                    HelloWorld message ->
                        E.text message
        ]
    }
