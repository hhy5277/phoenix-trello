module Boards.Model exposing (..)

import Session.Model exposing (User)


type alias Model =
    { id : Maybe String
    , fetching : Bool
    , board : Maybe BoardModel
    }


type alias BoardModel =
    { id : String
    , user_id : Maybe Int
    , name : String
    , user : Maybe User
    , lists : Maybe (List ListModel)
    , members : Maybe (List User)
    }


type alias ListModel =
    { id : Int
    , board_id : Int
    , name : String
    , position : Int
    , cards : List CardModel
    }


type alias CardModel =
    { id : Int
    , list_id : Int
    , name : String
    , description : Maybe String
    , position : Int
    , tags : List String
    , comments : List CommentModel
    , members : List User
    }


type alias CommentModel =
    { id : Int
    , card_id : Int
    , user : User
    , text : String
    , inserted_at : String
    }


type alias BoardResponseModel =
    { board : BoardModel }


initialModel : Model
initialModel =
    { id = Nothing
    , fetching = True
    , board = Nothing
    }
