module Main exposing
  ( ..
  )

-- Imports ---------------------------------------------------------------------
import Browser
import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events

-- Main ------------------------------------------------------------------------
main : Program Flags Model Msg
main =
  Browser.element
    { init = init
    , update = update
    , view = view
    , subscriptions = subscriptions
    }

-- Model -----------------------------------------------------------------------
type alias Flags =
  ()

type alias Model =
  { count : Int
  }

init : Flags -> ( Model, Cmd Msg )
init flags =
  ( { count = 0
    }
  , Cmd.none
  )

-- Update ----------------------------------------------------------------------
type Msg
  = Increment
  | Decrement

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Increment ->
      ( { model | count = model.count + 1 }
      , Cmd.none
      )

    Decrement ->
      ( { model | count = model.count - 1 }
      , Cmd.none
      )

-- View ------------------------------------------------------------------------
view : Model -> Html Msg
view model =
  Html.div []
    [ Html.button [ Events.onClick Increment ] [ Html.text "+" ]
    , Html.div [] [ Html.text <| String.fromInt model.count ]
    , Html.button [ Events.onClick Decrement ] [ Html.text "-" ]
    ]

-- Subscriptions ---------------------------------------------------------------
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.batch
    [
    ]