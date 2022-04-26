---
theme: company-theme.scss
class: lead
paginate: true
backgroundColor: '#302e2e'
color: '#ed700b'
header: ' '
footer: '_OCaml Dev Workflow_'
title: Crossing the desert with a Camel and a Wizard
description: OCaml Dev Workflow
author: Matthieu GOSSET
keywords: ocaml,workflow,build
url: 'https://www.ocaml.org/'
---


# **Crossing the desert with a Camel and a Wizard**

 **OCaml Dev Workflow**

![w:110px](./svg/Merlin_KHIII.webp)![w:70px](./svg/file_type_ocaml_icon_130288.svg)

_Matthieu Gosset_

---

## Objets

* Presentation object 1
* Presentation objects 2
  * Sub object 1 ...
  * Sub object 2 ...

---

## Plan

* Can use UTF-8 (⚠ take that Org-mode/LaTex ⚠)
* Any 2
* _Italic text_
* Any **BF text**

---

## Object 1

* exemple command

   ```shell
   dune build -P package_name
   ```

---

## Can use tree

```tree
.
├── bin
│   ├── test.ml
│   └── dune
├── test-pkg.opam
├── dune-project
├── esy.lock
├── lib
│   ├── lib_code.ml
│   └── dune
├── package.json
└── README.md
```

---

## Exemple Json

```json
{
  "name": "test",
  "version": "0.1.0",
  "description": "OCaml Library - test pkg",
  "license": "MIT",
  "scripts": {
    "test": "esy x test"
  },
  "dependencies": {
    "@opam/dune": "3.0.3",
    "ocaml": "~4.10.0"
  }
}
```

---

## Exemple ssexp

```lisp
(lang dune 3.0)
(name test)
(generate_opam_files true)
(version 0.1.0)
(formatting
 (enabled_for ocaml reason))
(package
 (name test)
 (depends
  (ocaml
   (>= 4.10.0))))
```

---

## Exemple JS

```javascript
const CONST = "val"
let NON_CONST = "val"
NON_CONST = "new val"
var ANY_VAR = ""
const object = {
  a: 1,
  b: "test",
  c: false,
  d: undefined
}
const functionName = (param1, paramOpt = "") => param1 + paramOpt
```

---

## End ?

Here some normal text
Thanks for your attention,
Expecting pertinent questions and reaction,
Have a nice cofee nap
