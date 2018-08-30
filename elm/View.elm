module View exposing (view)

import Html exposing (Html, div, article, text, h1, h3, ul, li, img, button, i)
import Html.Attributes exposing (class, classList, src)
import Html.Events exposing (onClick)
import Model exposing (Model)
import Types exposing (Msg(..))


view : Model -> Html Msg
view model =
    div []
        [ div [ class "callout large primary" ]
            [ h1 [ class "text-center" ]
                [ text "Elm Brunch Foundation Starter" ]
            ]
        , article [ class "grid-container" ]
            [ div [ class "grid-x grid-margin-x align-center" ]
                [ div [ class "cell medium-9 large-7" ]
                    [ div [ class "grid-x" ]
                        [ div [ class "cell medium-6 large-6 small-order-1" ]
                            [ div [ class "" ]
                                [ ul []
                                    [ li [] [ text "elm: \"~0.18.0\"" ]
                                    , li [] [ text "foundation-sites: \"^6.5.0-rc.2\"" ]
                                    , li [] [ text "foundation-icons: \"^1.0.1\"" ]
                                    , li [] [ text "sass-brunch: \"^2.10.4\"" ]
                                    ]
                                , div [ class "version--width text-center" ]
                                    [ button
                                        [ class "small-only-expanded button  btn--width"
                                        , classList
                                            [ ( "primary", not model.isTextDisplayed )
                                            , ( "alert", model.isTextDisplayed )
                                            ]
                                        , onClick (ShowText model.isTextDisplayed)
                                        ]
                                        [ i [ class "fi-heart" ] [] ]
                                    ]
                                ]
                            ]
                        , div [ class "cell medium-6 large-6 small-order-2" ]
                            [ div [ class "media-object stack-for-small" ]
                                [ div [ class "media-object-section" ]
                                    [ img
                                        [ class "thumbnail"
                                        , src "images/300x150.png"
                                        ]
                                        []
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            , div []
                [ if model.isTextDisplayed then
                    h3 [ class "text-center text--color" ]
                        [ text model.text ]
                  else
                    text ""
                ]
            ]
        ]
