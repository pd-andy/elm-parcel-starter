import { Elm } from './elm/Main.elm'

const flags = {}
const node = document.querySelector('[data-elm-entry]')

Elm.Main.init({ node, flags })
