<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

    <!--디자인 스타일-->
    <style>
       
        *, ::after, ::before {
            box-sizing: border-box;
        }

        html {
            font-family: sans-serif;
            line-height: 1.15;
            -webkit-text-size-adjust: 100%;
            -webkit-tap-highlight-color: transparent;
        }

        article, aside, figcaption, figure, footer, header, hgroup, main, nav, section {
            display: block;
        }

        body {
            margin: 0;
            font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            text-align: left;
            background-color: #fff;
        }

        [tabindex="-1"]:focus:not(:focus-visible) {
            outline: 0 !important;
        }

        hr {
            box-sizing: content-box;
            height: 0;
            overflow: visible;
        }

        h1,h2, h3, h4, h5, h6 {
            margin-top: 0;
            margin-bottom: .5rem;
        }

        h7 {
            left:45%;
            font-size: 50px;
            color:white;
         position: relative;
        }

        .lgin_body {
            margin: 20px 40px;
            width: 100%;
            height: 100%;
            position: relative;
        }

            .lgin_body form {
                width: 900px;
                height: 700px;
                top: 5%;
                left: 45%;
                margin: 0 0 0 -350px;
                position: absolute;
                background-color: silver;
            }

                .lgin_body form input {
                    display: block;
                    width: 600px;
                    height: 65px;
                    left: 15%;
                    position: relative;
                    font-size: 30px;
                    margin: 20px;
                }

        p {
            margin-top: 0;
            margin-bottom: 1rem;
        }


        address {
            margin-bottom: 1rem;
            font-style: normal;
            line-height: inherit;
        }

        dl, ol, ul {
            margin-top: 0;
            margin-bottom: 1rem;
        }

            ol ol, ol ul, ul ol, ul ul {
                margin-bottom: 0;
            }

        dt {
            font-weight: 700;
        }

        dd {
            margin-bottom: .5rem;
            margin-left: 0;
        }

        blockquote {
            margin: 0 0 1rem;
        }

        b, strong {
            font-weight: bolder;
        }

        small {
            font-size: 80%;
        }

        sub, sup {
            position: relative;
            font-size: 75%;
            line-height: 0;
            vertical-align: baseline;
        }

        sub {
            bottom: -.25em;
        }

        sup {
            top: -.5em;
        }

        a {
            color: #007bff;
            text-decoration: none;
            background-color: transparent;
        }

            a:hover {
                color: #0056b3;
                text-decoration: underline;
            }

            a:not([href]) {
                color: inherit;
                text-decoration: none;
            }

                a:not([href]):hover {
                    color: inherit;
                    text-decoration: none;
                }
        button {
            border-radius: 0;
        }

            button:focus {
                outline: 1px dotted;
                outline: 5px auto -webkit-focus-ring-color;
            }

        button, input, optgroup, select, textarea {
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }

        button, input {
            overflow: visible;
        }

        button, select {
            text-transform: none;
        }

        select {
            word-wrap: normal;
        }

        [type=button], [type=reset], [type=submit], button {
            -webkit-appearance: button;
        }

            [type=button]:not(:disabled), [type=reset]:not(:disabled), [type=submit]:not(:disabled), button:not(:disabled) {
                cursor: pointer;
            }

            [type=button]::-moz-focus-inner, [type=reset]::-moz-focus-inner, [type=submit]::-moz-focus-inner, button::-moz-focus-inner {
                padding: 0;
                border-style: none;
            }

        input[type=checkbox], input[type=radio] {
            box-sizing: border-box;
            padding: 0;
        }

        input[type=date], input[type=datetime-local], input[type=month], input[type=time] {
            -webkit-appearance: listbox;
        }

        textarea {
            overflow: auto;
            resize: vertical;
        }



        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            margin-bottom: .5rem;
            font-weight: 500;
            line-height: 1.2;
        }

        .h1, h1 {
            font-size: 2.5rem;
        }

        .h2, h2 {
            font-size: 2rem;
        }

        .h3, h3 {
            font-size: 1.75rem;
        }

        .h4, h4 {
            font-size: 1.5rem;
        }

        .h5, h5 {
            font-size: 1.25rem;
        }

        .h6, h6 {
            font-size: 1rem;
        }

        .lead {
            font-size: 1.25rem;
            font-weight: 300;
        }

        .display-1 {
            font-size: 6rem;
            font-weight: 300;
            line-height: 1.2;
        }

        .display-2 {
            font-size: 5.5rem;
            font-weight: 300;
            line-height: 1.2;
        }

        .display-3 {
            font-size: 4.5rem;
            font-weight: 300;
            line-height: 1.2;
        }

        .display-4 {
            font-size: 3.5rem;
            font-weight: 300;
            line-height: 1.2;
        }


        pre {
            display: block;
            font-size: 87.5%;
            color: #212529;
        }

            pre code {
                font-size: inherit;
                color: inherit;
                word-break: normal;
            }

        .pre-scrollable {
            max-height: 340px;
            overflow-y: scroll;
        }

        .container {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }


        .container-fluid, .container-lg, .container-md, .container-sm, .container-xl {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }


        .row {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }


        @media (min-width:992px) {
            .col-lg {
                -ms-flex-preferred-size: 0;
                flex-basis: 0;
                -ms-flex-positive: 1;
                flex-grow: 1;
                max-width: 100%;
            }

            .row-cols-lg-1 > * {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }

            .row-cols-lg-2 > * {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }

            .row-cols-lg-3 > * {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }

            .row-cols-lg-4 > * {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }

            .row-cols-lg-5 > * {
                -ms-flex: 0 0 20%;
                flex: 0 0 20%;
                max-width: 20%;
            }

            .row-cols-lg-6 > * {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }

            .col-lg-auto {
                -ms-flex: 0 0 auto;
                flex: 0 0 auto;
                width: auto;
                max-width: 100%;
            }

            .col-lg-1 {
                -ms-flex: 0 0 8.333333%;
                flex: 0 0 8.333333%;
                max-width: 8.333333%;
            }

            .col-lg-2 {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }

            .col-lg-3 {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }

            .col-lg-4 {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }

            .col-lg-5 {
                -ms-flex: 0 0 41.666667%;
                flex: 0 0 41.666667%;
                max-width: 41.666667%;
            }

            .col-lg-6 {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }

            .col-lg-7 {
                -ms-flex: 0 0 58.333333%;
                flex: 0 0 58.333333%;
                max-width: 58.333333%;
            }

            .col-lg-8 {
                -ms-flex: 0 0 66.666667%;
                flex: 0 0 66.666667%;
                max-width: 66.666667%;
            }

            .col-lg-9 {
                -ms-flex: 0 0 75%;
                flex: 0 0 75%;
                max-width: 75%;
            }

            .col-lg-10 {
                -ms-flex: 0 0 83.333333%;
                flex: 0 0 83.333333%;
                max-width: 83.333333%;
            }

            .col-lg-11 {
                -ms-flex: 0 0 91.666667%;
                flex: 0 0 91.666667%;
                max-width: 91.666667%;
            }

            .col-lg-12 {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }

            .order-lg-first {
                -ms-flex-order: -1;
                order: -1;
            }

            .order-lg-last {
                -ms-flex-order: 13;
                order: 13;
            }

            .order-lg-0 {
                -ms-flex-order: 0;
                order: 0;
            }

            .order-lg-1 {
                -ms-flex-order: 1;
                order: 1;
            }

            .order-lg-2 {
                -ms-flex-order: 2;
                order: 2;
            }

            .order-lg-3 {
                -ms-flex-order: 3;
                order: 3;
            }

            .order-lg-4 {
                -ms-flex-order: 4;
                order: 4;
            }

            .order-lg-5 {
                -ms-flex-order: 5;
                order: 5;
            }

            .order-lg-6 {
                -ms-flex-order: 6;
                order: 6;
            }

            .order-lg-7 {
                -ms-flex-order: 7;
                order: 7;
            }

            .order-lg-8 {
                -ms-flex-order: 8;
                order: 8;
            }

            .order-lg-9 {
                -ms-flex-order: 9;
                order: 9;
            }

            .order-lg-10 {
                -ms-flex-order: 10;
                order: 10;
            }

            .order-lg-11 {
                -ms-flex-order: 11;
                order: 11;
            }

            .order-lg-12 {
                -ms-flex-order: 12;
                order: 12;
            }

            .offset-lg-0 {
                margin-left: 0;
            }

            .offset-lg-1 {
                margin-left: 8.333333%;
            }

            .offset-lg-2 {
                margin-left: 16.666667%;
            }

            .offset-lg-3 {
                margin-left: 25%;
            }

            .offset-lg-4 {
                margin-left: 33.333333%;
            }

            .offset-lg-5 {
                margin-left: 41.666667%;
            }

            .offset-lg-6 {
                margin-left: 50%;
            }

            .offset-lg-7 {
                margin-left: 58.333333%;
            }

            .offset-lg-8 {
                margin-left: 66.666667%;
            }

            .offset-lg-9 {
                margin-left: 75%;
            }

            .offset-lg-10 {
                margin-left: 83.333333%;
            }

            .offset-lg-11 {
                margin-left: 91.666667%;
            }
        }

        @media (min-width:992px) {
            .m-lg-0 {
                margin: 0 !important;
            }

            .mt-lg-0, .my-lg-0 {
                margin-top: 0 !important;
            }

            .mr-lg-0, .mx-lg-0 {
                margin-right: 0 !important;
            }

            .mb-lg-0, .my-lg-0 {
                margin-bottom: 0 !important;
            }

            .ml-lg-0, .mx-lg-0 {
                margin-left: 0 !important;
            }

            .m-lg-1 {
                margin: .25rem !important;
            }

            .mt-lg-1, .my-lg-1 {
                margin-top: .25rem !important;
            }

            .mr-lg-1, .mx-lg-1 {
                margin-right: .25rem !important;
            }

            .mb-lg-1, .my-lg-1 {
                margin-bottom: .25rem !important;
            }

            .ml-lg-1, .mx-lg-1 {
                margin-left: .25rem !important;
            }

            .m-lg-2 {
                margin: .5rem !important;
            }

            .mt-lg-2, .my-lg-2 {
                margin-top: .5rem !important;
            }

            .mr-lg-2, .mx-lg-2 {
                margin-right: .5rem !important;
            }

            .mb-lg-2, .my-lg-2 {
                margin-bottom: .5rem !important;
            }

            .ml-lg-2, .mx-lg-2 {
                margin-left: .5rem !important;
            }

            .m-lg-3 {
                margin: 1rem !important;
            }

            .mt-lg-3, .my-lg-3 {
                margin-top: 1rem !important;
            }

            .mr-lg-3, .mx-lg-3 {
                margin-right: 1rem !important;
            }

            .mb-lg-3, .my-lg-3 {
                margin-bottom: 1rem !important;
            }

            .ml-lg-3, .mx-lg-3 {
                margin-left: 1rem !important;
            }

            .m-lg-4 {
                margin: 1.5rem !important;
            }

            .mt-lg-4, .my-lg-4 {
                margin-top: 1.5rem !important;
            }

            .mr-lg-4, .mx-lg-4 {
                margin-right: 1.5rem !important;
            }

            .mb-lg-4, .my-lg-4 {
                margin-bottom: 1.5rem !important;
            }

            .ml-lg-4, .mx-lg-4 {
                margin-left: 1.5rem !important;
            }

            .m-lg-5 {
                margin: 3rem !important;
            }

            .mt-lg-5, .my-lg-5 {
                margin-top: 3rem !important;
            }

            .mr-lg-5, .mx-lg-5 {
                margin-right: 3rem !important;
            }

            .mb-lg-5, .my-lg-5 {
                margin-bottom: 3rem !important;
            }

            .ml-lg-5, .mx-lg-5 {
                margin-left: 3rem !important;
            }

            .p-lg-0 {
                padding: 0 !important;
            }

            .pt-lg-0, .py-lg-0 {
                padding-top: 0 !important;
            }

            .pr-lg-0, .px-lg-0 {
                padding-right: 0 !important;
            }

            .pb-lg-0, .py-lg-0 {
                padding-bottom: 0 !important;
            }

            .pl-lg-0, .px-lg-0 {
                padding-left: 0 !important;
            }

            .p-lg-1 {
                padding: .25rem !important;
            }

            .pt-lg-1, .py-lg-1 {
                padding-top: .25rem !important;
            }

            .pr-lg-1, .px-lg-1 {
                padding-right: .25rem !important;
            }

            .pb-lg-1, .py-lg-1 {
                padding-bottom: .25rem !important;
            }

            .pl-lg-1, .px-lg-1 {
                padding-left: .25rem !important;
            }

            .p-lg-2 {
                padding: .5rem !important;
            }

            .pt-lg-2, .py-lg-2 {
                padding-top: .5rem !important;
            }

            .pr-lg-2, .px-lg-2 {
                padding-right: .5rem !important;
            }

            .pb-lg-2, .py-lg-2 {
                padding-bottom: .5rem !important;
            }

            .pl-lg-2, .px-lg-2 {
                padding-left: .5rem !important;
            }

            .p-lg-3 {
                padding: 1rem !important;
            }

            .pt-lg-3, .py-lg-3 {
                padding-top: 1rem !important;
            }

            .pr-lg-3, .px-lg-3 {
                padding-right: 1rem !important;
            }

            .pb-lg-3, .py-lg-3 {
                padding-bottom: 1rem !important;
            }

            .pl-lg-3, .px-lg-3 {
                padding-left: 1rem !important;
            }

            .p-lg-4 {
                padding: 1.5rem !important;
            }

            .pt-lg-4, .py-lg-4 {
                padding-top: 1.5rem !important;
            }

            .pr-lg-4, .px-lg-4 {
                padding-right: 1.5rem !important;
            }

            .pb-lg-4, .py-lg-4 {
                padding-bottom: 1.5rem !important;
            }

            .pl-lg-4, .px-lg-4 {
                padding-left: 1.5rem !important;
            }

            .p-lg-5 {
                padding: 3rem !important;
            }

            .pt-lg-5, .py-lg-5 {
                padding-top: 3rem !important;
            }

            .pr-lg-5, .px-lg-5 {
                padding-right: 3rem !important;
            }

            .pb-lg-5, .py-lg-5 {
                padding-bottom: 3rem !important;
            }

            .pl-lg-5, .px-lg-5 {
                padding-left: 3rem !important;
            }

            .m-lg-n1 {
                margin: -.25rem !important;
            }

            .mt-lg-n1, .my-lg-n1 {
                margin-top: -.25rem !important;
            }

            .mr-lg-n1, .mx-lg-n1 {
                margin-right: -.25rem !important;
            }

            .mb-lg-n1, .my-lg-n1 {
                margin-bottom: -.25rem !important;
            }

            .ml-lg-n1, .mx-lg-n1 {
                margin-left: -.25rem !important;
            }

            .m-lg-n2 {
                margin: -.5rem !important;
            }

            .mt-lg-n2, .my-lg-n2 {
                margin-top: -.5rem !important;
            }

            .mr-lg-n2, .mx-lg-n2 {
                margin-right: -.5rem !important;
            }

            .mb-lg-n2, .my-lg-n2 {
                margin-bottom: -.5rem !important;
            }

            .ml-lg-n2, .mx-lg-n2 {
                margin-left: -.5rem !important;
            }

            .m-lg-n3 {
                margin: -1rem !important;
            }

            .mt-lg-n3, .my-lg-n3 {
                margin-top: -1rem !important;
            }

            .mr-lg-n3, .mx-lg-n3 {
                margin-right: -1rem !important;
            }

            .mb-lg-n3, .my-lg-n3 {
                margin-bottom: -1rem !important;
            }

            .ml-lg-n3, .mx-lg-n3 {
                margin-left: -1rem !important;
            }

            .m-lg-n4 {
                margin: -1.5rem !important;
            }

            .mt-lg-n4, .my-lg-n4 {
                margin-top: -1.5rem !important;
            }

            .mr-lg-n4, .mx-lg-n4 {
                margin-right: -1.5rem !important;
            }

            .mb-lg-n4, .my-lg-n4 {
                margin-bottom: -1.5rem !important;
            }

            .ml-lg-n4, .mx-lg-n4 {
                margin-left: -1.5rem !important;
            }

            .m-lg-n5 {
                margin: -3rem !important;
            }

            .mt-lg-n5, .my-lg-n5 {
                margin-top: -3rem !important;
            }

            .mr-lg-n5, .mx-lg-n5 {
                margin-right: -3rem !important;
            }

            .mb-lg-n5, .my-lg-n5 {
                margin-bottom: -3rem !important;
            }

            .ml-lg-n5, .mx-lg-n5 {
                margin-left: -3rem !important;
            }

            .m-lg-auto {
                margin: auto !important;
            }

            .mt-lg-auto, .my-lg-auto {
                margin-top: auto !important;
            }

            .mr-lg-auto, .mx-lg-auto {
                margin-right: auto !important;
            }

            .mb-lg-auto, .my-lg-auto {
                margin-bottom: auto !important;
            }

            .ml-lg-auto, .mx-lg-auto {
                margin-left: auto !important;
            }
        }


        @media (min-width:992px) {
            .text-lg-left {
                text-align: left !important;
            }

            .text-lg-right {
                text-align: right !important;
            }

            .text-lg-center {
                text-align: center !important;
            }
        }

        @media print {
            *, ::after, ::before {
                text-shadow: none !important;
                box-shadow: none !important;
            }

            a:not(.btn) {
                text-decoration: underline;
            }

            abbr[title]::after {
                content: " (" attr(title) ")";
            }

            pre {
                white-space: pre-wrap !important;
            }

            blockquote, pre {
                border: 1px solid #adb5bd;
                page-break-inside: avoid;
            }

            thead {
                display: table-header-group;
            }

            img, tr {
                page-break-inside: avoid;
            }

            h2, h3, p {
                orphans: 3;
                widows: 3;
            }

            h2, h3 {
                page-break-after: avoid;
            }

            @page {
                size: a3;
            }

            body {
                min-width: 992px !important;
            }

            .container {
                min-width: 992px !important;
            }

            .navbar {
                display: none;
            }

            .badge {
                border: 1px solid #000;
            }

            .table {
                border-collapse: collapse !important;
            }

                .table td, .table th {
                    background-color: #fff !important;
                }

            .table-bordered td, .table-bordered th {
                border: 1px solid #dee2e6 !important;
            }

            .table-dark {
                color: inherit;
            }

                .table-dark tbody + tbody, .table-dark td, .table-dark th, .table-dark thead th {
                    border-color: #dee2e6;
                }

            .table .thead-dark th {
                color: inherit;
                border-color: #dee2e6;
            }
        }
    </style>
    <style>
        html,
        body {
            height: 100%;
            font-family: "Mulish", sans-serif;
            -webkit-font-smoothing: antialiased;
            background: #0b0c2a;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            margin: 0;
            color: #111111;
            font-weight: 400;
            font-family: "Mulish", sans-serif;
        }

        h1 {
            text-align: center;
            font-size: 50px;
            color: white;
            line-height: 50px;
            background-color: #FACC2E;
            font-weight: bold;
        }

        h2 {
            font-size: 36px;
        }

        h3 {
            font-size: 30px;
        }

        h4 {
            font-size: 24px;
        }

        h5 {
            font-size: 18px;
        }

        h6 {
            font-size: 16px;
        }

        p {
            font-size: 15px;
            font-family: "Mulish", sans-serif;
            color: #3d3d3d;
            font-weight: 400;
            line-height: 25px;
            margin: 0 0 15px 0;
        }

        img {
            max-width: 100%;
        }

        input:focus,
        select:focus,
        button:focus,
        textarea:focus {
            outline: none;
        }

        a:hover,
        a:focus {
            text-decoration: none;
            outline: none;
            color: #ffffff;
        }

        ul,
        ol {
            padding: 0;
            margin: 0;
        }


        /*---------------------
          Header
        -----------------------*/

        .header {
            background: #070720;
        }

        .header__logo {
            padding: 20px 0 17px;
        }

            .header__logo a {
                display: inline-block;
            }

        .header__menu {
            text-align: center;
        }

            .header__menu ul li {
                list-style: none;
                display: inline-block;
                position: relative;
                margin-right: 16px;
            }

                .header__menu ul li.active a {
                    background: #e53637;
                    color: #ffffff;
                }

                .header__menu ul li:hover a {
                    color: #ffffff;
                }

                .header__menu ul li:hover .dropdown {
                    top: 62px;
                    opacity: 1;
                    visibility: visible;
                }

                    .header__menu ul li:hover .dropdown li a {
                        background: transparent;
                    }

                .header__menu ul li:last-child {
                    margin-right: 0;
                }

                .header__menu ul li .dropdown {
                    position: absolute;
                    left: 0;
                    top: 82px;
                    width: 150px;
                    background: #ffffff;
                    text-align: left;
                    padding: 5px 0;
                    z-index: 9;
                    opacity: 0;
                    visibility: hidden;
                    -webkit-transition: all, 0.3s;
                    -o-transition: all, 0.3s;
                    transition: all, 0.3s;
                }

                    .header__menu ul li .dropdown li {
                        display: block;
                        margin-right: 0;
                    }

                        .header__menu ul li .dropdown li a {
                            font-size: 14px;
                            color: #111111;
                            font-weight: 500;
                            padding: 5px 20px;
                        }

                .header__menu ul li a {
                    font-size: 15px;
                    color: #b7b7b7;
                    display: block;
                    font-weight: 700;
                    -webkit-transition: all, 0.5s;
                    -o-transition: all, 0.5s;
                    transition: all, 0.5s;
                    padding: 20px;
                }

                    .header__menu ul li a span {
                        position: relative;
                        font-size: 17px;
                        top: 2px;
                    }

        .header__right {
            text-align: right;
            padding: 20px 0 15px;
        }

            .header__right a {
                display: inline-block;
                font-size: 18px;
                color: #ffffff;
                margin-right: 30px;
            }

                .header__right a:last-child {
                    margin-right: 0;
                }

        .slicknav_menu {
            display: none;
        }

        /*---------------------
          Anime Details
        -----------------------*/

        .anime-details {
            padding-top: 60px;
        }

        .anime__details__content {
            margin-bottom: 65px;
        }

        .anime__details__text {
            position: relative;
        }

            .anime__details__text p {
                color: #b7b7b7;
                font-size: 18px;
                line-height: 30px;
            }

        .anime__details__pic {
            height: 440px;
            border-radius: 5px;
            position: relative;
        }

            .anime__details__pic .comment {
                font-size: 13px;
                color: #ffffff;
                background: #3d3d3d;
                display: inline-block;
                padding: 2px 10px;
                border-radius: 4px;
                position: absolute;
                left: 10px;
                bottom: 25px;
            }

            .anime__details__pic .view {
                font-size: 13px;
                color: #ffffff;
                background: #3d3d3d;
                display: inline-block;
                padding: 2px 10px;
                border-radius: 4px;
                position: absolute;
                right: 10px;
                bottom: 25px;
            }

        .anime__details__title {
            margin-bottom: 20px;
        }

            .anime__details__title h3 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 13px;
            }

            .anime__details__title span {
                font-size: 15px;
                color: #b7b7b7;
                display: block;
            }

        .anime__details__rating {
            text-align: center;
            position: absolute;
            right: 0;
            top: 0;
        }

            .anime__details__rating .rating i {
                font-size: 24px;
                color: #e89f12;
                display: inline-block;
            }

            .anime__details__rating span {
                display: block;
                font-size: 18px;
                color: #b7b7b7;
            }

        .anime__details__widget {
            margin-bottom: 15px;
        }

            .anime__details__widget ul {
                margin-bottom: 20px;
            }

                .anime__details__widget ul li {
                    list-style: none;
                    font-size: 15px;
                    color: #ffffff;
                    line-height: 30px;
                    position: relative;
                    padding-left: 18px;
                }

                    .anime__details__widget ul li:before {
                        position: absolute;
                        left: 0;
                        top: 12px;
                        height: 6px;
                        width: 6px;
                        background: #b7b7b7;
                        content: "";
                    }

                    .anime__details__widget ul li span {
                        color: #b7b7b7;
                        width: 115px;
                        display: inline-block;
                    }

        .anime__details__btn .follow-btn {
            font-size: 13px;
            color: #ffffff;
            background: #e53637;
            display: inline-block;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            padding: 14px 20px;
            border-radius: 4px;
            margin-right: 11px;
        }

        .anime__details__btn .watch-btn span {
            font-size: 13px;
            color: #ffffff;
            background: #e53637;
            display: inline-block;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            padding: 14px 20px;
            border-radius: 4px 0 0 4px;
            margin-right: 1px;
        }

        .anime__details__btn .watch-btn i {
            font-size: 20px;
            display: inline-block;
            background: #e53637;
            padding: 11px 5px 16px 8px;
            color: #ffffff;
            border-radius: 0 4px 4px 0;
        }

        .anime__details__review {
            margin-bottom: 55px;
        }

        .anime__review__item {
            overflow: hidden;
            margin-bottom: 15px;
        }

        .anime__review__item__pic {
            float: left;
            margin-right: 20px;
            position: relative;
        }

            .anime__review__item__pic:before {
                position: absolute;
                right: -30px;
                top: 15px;
                border-top: 15px solid transparent;
                border-left: 15px solid #1d1e39;
                content: "";
                -webkit-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                transform: rotate(45deg);
            }

            .anime__review__item__pic img {
                height: 50px;
                width: 50px;
                border-radius: 50%;
            }

        .anime__review__item__text {
            overflow: hidden;
            background: #1d1e39;
            padding: 18px 30px 16px 20px;
            border-radius: 10px;
        }

            .anime__review__item__text h6 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 10px;
            }

                .anime__review__item__text h6 span {
                    color: #b7b7b7;
                    font-weight: 400;
                }

            .anime__review__item__text p {
                color: #b7b7b7;
                line-height: 23px;
                margin-bottom: 0;
            }

        .anime__details__form form textarea {
            width: 100%;
            font-size: 15px;
            color: #b7b7b7;
            padding-left: 20px;
            padding-top: 12px;
            height: 110px;
            border: none;
            border-radius: 5px;
            resize: none;
            margin-bottom: 24px;
        }

        .anime__details__form form button {
            font-size: 11px;
            color: #ffffff;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            background: #e53637;
            border: none;
            padding: 10px 15px;
            border-radius: 2px;
        }

        /*---------------------
          Anime Watching
        -----------------------*/

        .anime__video__player {
            margin-bottom: 70px;
        }

            .anime__video__player .plyr--video {
                border-radius: 5px;
                background: transparent;
            }

            .anime__video__player .plyr audio,
            .anime__video__player .plyr iframe,
            .anime__video__player .plyr video {
                width: 102%;
            }

            .anime__video__player .plyr--full-ui.plyr--video .plyr__control--overlaid {
                display: block;
            }

            .anime__video__player .plyr--video .plyr__control.plyr__tab-focus,
            .anime__video__player .plyr--video .plyr__control:hover,
            .anime__video__player .plyr--video .plyr__control[aria-expanded=true] {
                background: transparent;
            }

            .anime__video__player .plyr--video .plyr__controls {
                background: transparent;
            }

            .anime__video__player .plyr--video .plyr__progress__buffer {
                color: transparent;
            }

            .anime__video__player .plyr--full-ui input[type=range] {
                color: #ffffff;
            }

            .anime__video__player .plyr__controls .plyr__controls__item.plyr__progress__container {
                position: absolute;
                left: 26px;
                bottom: 45px;
                width: calc(100% - 60px);
            }

            .anime__video__player .plyr__menu {
                margin-right: 70px;
            }

            .anime__video__player .plyr__controls .plyr__controls__item:first-child {
                position: absolute;
                left: 32px;
                bottom: 8px;
            }

            .anime__video__player .plyr__controls .plyr__controls__item:last-child {
                position: absolute;
                right: 32px;
                bottom: 8px;
            }

            .anime__video__player .plyr__volume {
                position: absolute;
                width: auto;
                left: 76px;
                bottom: 8px;
            }

            .anime__video__player .plyr__controls .plyr__controls__item.plyr__time {
                position: absolute;
                left: 106px;
                bottom: 12px;
            }

            .anime__video__player .plyr__control--overlaid {
                background: transparent;
                background: var(--plyr-video-control-background-hover, var(--plyr-color-main, var(--plyr-color-main, transparent)));
            }

                .anime__video__player .plyr__control--overlaid svg {
                    height: 60px;
                    width: 50px;
                }

        .anime__details__episodes {
            margin-bottom: 35px;
        }

            .anime__details__episodes a {
                display: inline-block;
                font-size: 15px;
                color: #ffffff;
                background: rgba(255, 255, 255, 0.2);
                padding: 10px 20px;
                border-radius: 4px;
                margin-right: 15px;
                margin-bottom: 20px;
                -webkit-transition: all, 0.3s;
                -o-transition: all, 0.3s;
                transition: all, 0.3s;
            }

                .anime__details__episodes a:hover {
                    color: #000000;
                    background: #ffffff;
                }

        /*---------------------
          Breadcrumb
        -----------------------*/

        .breadcrumb-option {
            padding-top: 35px;
        }

        .breadcrumb__links a {
            font-size: 15px;
            color: #ffffff;
            margin-right: 18px;
            display: inline-block;
            position: relative;
        }

            .breadcrumb__links a i {
                margin-right: 5px;
                color: #e53637;
            }

            .breadcrumb__links a:after {
                position: absolute;
                right: -14px;
                top: 0;
                content: "";
                font-family: "FontAwesome";
            }

        .breadcrumb__links span {
            font-size: 15px;
            color: #b7b7b7;
            display: inline-block;
        }

        /*---------------------
            Normal Breadcrumb
        -----------------------*/

        .normal-breadcrumb {
            height: 300px;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
        }

        .normal__breadcrumb__text h2 {
            color: #ffffff;
            font-size: 48px;
            font-family: "Oswald", sans-serif;
            font-weight: 700;
            margin-bottom: 22px;
        }

        .normal__breadcrumb__text p {
            color: #ffffff;
            font-size: 24px;
            margin-bottom: 0;
        }


        /*---------------------
          Login
        -----------------------*/

        .login {
            padding-top: 130px;
            padding-bottom: 120px;
        }

        .login__form {
            position: relative;
            padding-left: 145px;
        }

            .login__form:after {
                position: absolute;
                right: -14px;
                top: -40px;
                height: 330px;
                width: 1px;
                background: rgba(255, 255, 255, 0.2);
                content: "";
            }

            .login__form h3 {
                color: #ffffff;
                font-weight: 700;
                font-family: "Oswald", sans-serif;
                margin-bottom: 30px;
            }

            .login__form form .input__item {
                position: relative;
                width: 370px;
                margin-bottom: 20px;
            }

                .login__form form .input__item:before {
                    position: absolute;
                    left: 50px;
                    top: 10px;
                    height: 30px;
                    width: 1px;
                    background: #b7b7b7;
                    content: "";
                }

                .login__form form .input__item input {
                    height: 50px;
                    width: 100%;
                    font-size: 15px;
                    color: #b7b7b7;
                    background: #ffffff;
                    border: none;
                    padding-left: 76px;
                }

                    .login__form form .input__item input::-webkit-input-placeholder {
                        color: #b7b7b7;
                    }

                    .login__form form .input__item input::-moz-placeholder {
                        color: #b7b7b7;
                    }

                    .login__form form .input__item input:-ms-input-placeholder {
                        color: #b7b7b7;
                    }

                    .login__form form .input__item input::-ms-input-placeholder {
                        color: #b7b7b7;
                    }

                    .login__form form .input__item input::placeholder {
                        color: #b7b7b7;
                    }

                .login__form form .input__item span {
                    color: #b7b7b7;
                    font-size: 20px;
                    position: absolute;
                    left: 15px;
                    top: 13px;
                }

            .login__form form button {
                border-radius: 0;
                margin-top: 10px;
            }

            .login__form .forget_pass {
                font-size: 15px;
                color: #ffffff;
                display: inline-block;
                position: absolute;
                right: 60px;
                bottom: 12px;
            }

        .login__register {
            padding-left: 30px;
        }

            .login__register h3 {
                color: #ffffff;
                font-weight: 700;
                font-family: "Oswald", sans-serif;
                margin-bottom: 30px;
            }

            .login__register .primary-btn {
                background: #e53637;
                padding: 12px 42px;
            }

        .login__social {
            padding-top: 52px;
        }

        .login__social__links {
            text-align: center;
        }

            .login__social__links span {
                color: #ffffff;
                display: block;
                font-size: 13px;
                font-weight: 700;
                letter-spacing: 2px;
                text-transform: uppercase;
                margin-bottom: 30px;
            }

            .login__social__links ul li {
                list-style: none;
                margin-bottom: 15px;
            }

                .login__social__links ul li:last-child {
                    margin-bottom: 0;
                }

                .login__social__links ul li a {
                    color: #ffffff;
                    display: block;
                    font-size: 13px;
                    font-weight: 700;
                    letter-spacing: 2px;
                    text-transform: uppercase;
                    width: 460px;
                    padding: 14px 0;
                    position: relative;
                    margin: 0 auto;
                }

                    .login__social__links ul li a.facebook {
                        background: #4267b2;
                    }

                    .login__social__links ul li a.google {
                        background: #ff4343;
                    }

                    .login__social__links ul li a.twitter {
                        background: #1da1f2;
                    }

                    .login__social__links ul li a i {
                        font-size: 20px;
                        position: absolute;
                        left: 32px;
                        top: 14px;
                    }

        /*---------------------
          Sign Up
        -----------------------*/

        .signup {
            padding-top: 130px;
            padding-bottom: 150px;
        }

            .signup .login__form:after {
                height: 450px;
            }

            .signup .login__form h5 {
                font-size: 15px;
                color: #ffffff;
                margin-top: 36px;
            }

                .signup .login__form h5 a {
                    color: #e53637;
                    font-weight: 700;
                }

            .signup .login__social__links {
                text-align: left;
                padding-left: 40px;
            }

                .signup .login__social__links h3 {
                    color: #ffffff;
                    font-weight: 700;
                    font-family: "Oswald", sans-serif;
                    margin-bottom: 30px;
                }

                .signup .login__social__links ul li a {
                    margin: 0;
                    text-align: center;
                }

        /*---------------------
          Footer
        -----------------------*/

        .footer {
            background: #070720;
            padding-top: 60px;
            padding-bottom: 40px;
            position: relative;
        }

        .page-up {
            position: absolute;
            left: 50%;
            top: -25px;
            margin-left: -25px;
        }

            .page-up a {
                display: inline-block;
                font-size: 36px;
                color: #ffffff;
                height: 50px;
                width: 50px;
                background: #e53637;
                line-height: 50px;
                text-align: center;
                border-radius: 50%;
            }

                .page-up a span {
                    position: relative;
                    top: 2px;
                    left: -1px;
                }

        .footer__nav {
            text-align: center;
        }

            .footer__nav ul li {
                list-style: none;
                display: inline-block;
                position: relative;
                margin-right: 40px;
            }

                .footer__nav ul li:last-child {
                    margin-right: 0;
                }

                .footer__nav ul li a {
                    font-size: 15px;
                    color: #b7b7b7;
                    display: block;
                    font-weight: 700;
                }

        .footer__copyright__text {
            color: #b7b7b7;
            margin-bottom: 0;
            text-align: right;
        }

            .footer__copyright__text a {
                color: #e53637;
            }

        /*--------------------------------- Responsive Media Quaries -----------------------------*/

        @media only screen and (min-width: 1200px) and (max-width: 1300px) {
            .hero {
                overflow: hidden;
            }
        }

        @media only screen and (min-width: 1200px) {
            .container {
                max-width: 1170px;
            }
        }

        /* Medium Device = 1200px */

        @media only screen and (min-width: 992px) and (max-width: 1199px) {
            .hero {
                overflow: hidden;
            }

            .login__form {
                position: relative;
                padding-left: 32px;
            }

            .login__social__links ul li a {
                width: 380px;
            }

            .blog__item__text {
                padding: 0 50px;
            }
        }

        /* Tablet Device = 768px */

        @media only screen and (min-width: 768px) and (max-width: 991px) {
            .hero {
                overflow: hidden;
            }

            .header {
                position: relative;
            }

                .header .container {
                    position: relative;
                }

            .header__right {
                position: absolute;
                right: 120px;
                top: -42px;
                padding: 0;
            }

            .header__menu {
                display: none;
            }

            .slicknav_menu {
                background: transparent;
                padding: 0;
                display: block;
            }

            .slicknav_nav {
                position: absolute;
                left: 0;
                top: 60px;
                width: 100%;
                background: #ffffff;
                padding: 15px 30px;
                z-index: 9;
            }

                .slicknav_nav ul {
                    margin: 0;
                }

                .slicknav_nav .slicknav_row,
                .slicknav_nav a {
                    padding: 7px 0;
                    margin: 0;
                    color: #111111;
                    font-weight: 600;
                }

            .slicknav_btn {
                border-radius: 0;
                background-color: #222;
                position: absolute;
                right: 0;
                top: 9px;
            }

            .slicknav_nav .slicknav_arrow {
                color: #111111;
            }

            .slicknav_nav .slicknav_row:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }

            .slicknav_nav a:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }

            .product__sidebar {
                padding-top: 50px;
            }

            .footer__logo {
                text-align: center;
                margin-bottom: 20px;
            }

            .footer__nav {
                margin-bottom: 15px;
            }

            .footer__copyright__text {
                text-align: center;
            }

            .anime__details__widget ul li span {
                width: 90px;
            }

            .anime__details__pic {
                margin-bottom: 40px;
            }

            .anime__details__sidebar {
                padding-top: 50px;
            }

            .login__form {
                padding-left: 0;
                margin-bottom: 40px;
            }

                .login__form:after {
                    display: none;
                }

                .login__form form .input__item {
                    width: auto;
                }

            .login__register {
                padding-left: 0;
            }

            .signup .login__social__links {
                padding-left: 0;
            }
        }

        /* Wide Mobile = 480px */

        @media only screen and (max-width: 767px) {
            .hero {
                overflow: hidden;
            }

            .header {
                position: relative;
            }

                .header .container {
                    position: relative;
                }

            .header__right {
                position: absolute;
                right: 120px;
                top: -42px;
                padding: 0;
            }

            .header__menu {
                display: none;
            }

            .slicknav_menu {
                background: transparent;
                padding: 0;
                display: block;
            }

            .slicknav_nav {
                position: absolute;
                left: 0;
                top: 60px;
                width: 100%;
                background: #ffffff;
                padding: 15px 30px;
                z-index: 9;
            }

                .slicknav_nav ul {
                    margin: 0;
                }

                .slicknav_nav .slicknav_row,
                .slicknav_nav a {
                    padding: 7px 0;
                    margin: 0;
                    color: #111111;
                    font-weight: 600;
                }

            .slicknav_btn {
                border-radius: 0;
                background-color: #222;
                position: absolute;
                right: 0;
                top: 9px;
            }

            .slicknav_nav .slicknav_arrow {
                color: #111111;
            }

            .slicknav_nav .slicknav_row:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }

            .slicknav_nav a:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }

            .product__sidebar {
                padding-top: 50px;
            }

            .footer__logo {
                text-align: center;
                margin-bottom: 20px;
            }

            .footer__nav {
                margin-bottom: 15px;
            }

            .footer__copyright__text {
                text-align: center;
            }

            .blog__details__title h2 {
                font-size: 34px;
                line-height: normal;
            }

            .anime__details__pic {
                margin-bottom: 40px;
            }

            .anime__details__sidebar {
                padding-top: 50px;
            }

            .btn__all {
                text-align: left;
            }

            .product__page__title .section-title {
                margin-bottom: 30px;
            }

            .product__page__title .product__page__filter {
                text-align: left;
            }

            .anime__details__rating {
                text-align: left;
                position: relative;
                margin-bottom: 20px;
            }

            .blog__details__social {
                overflow: hidden;
            }

            .blog__details__title .blog__details__social a {
                margin-right: 10px;
                margin-bottom: 10px;
                width: calc(50% - 10px);
                float: left;
            }

            .login__form {
                padding-left: 0;
                margin-bottom: 40px;
            }

                .login__form:after {
                    display: none;
                }

                .login__form form .input__item {
                    width: auto;
                }

            .signup .login__social__links {
                padding-left: 0;
            }

            .login__social__links ul li a {
                width: auto;
            }

            .blog__item__text {
                padding: 0 30px;
            }

            .login__register {
                padding-left: 0;
            }

            .product__sidebar__view .filter__controls li {
                margin-right: 2px;
            }

            .search-model-form input {
                width: 100%;
            }
        }

        /* Small Device = 320px */

        @media only screen and (max-width: 479px) {
            .hero__slider.owl-carousel .owl-nav {
                display: none;
            }

            .hero__items {
                padding: 250px 0 42px 15px;
            }

            .hero__text h2 {
                font-size: 32px;
            }

            .footer__nav ul li {
                margin-right: 10px;
            }

            .anime__details__btn .follow-btn {
                padding: 14px 26px;
                margin-right: 11px;
                margin-bottom: 25px;
            }

            .anime__details__widget ul li span {
                width: 85px;
            }

            .anime__video__player .plyr__volume {
                left: 65px;
            }

            .anime__video__player .plyr__controls .plyr__controls__item.plyr__time {
                left: 95px;
            }

            .anime__video__player .plyr__menu {
                margin-right: 60px;
            }

            .blog__details__title h2 {
                font-size: 30px;
                line-height: normal;
            }

            .blog__details__title .blog__details__social a {
                padding: 16px 25px 14px 20px;
            }

            .blog__details__comment__item.blog__details__comment__item--reply {
                padding-left: 0;
            }

            .blog__details__comment__item__pic {
                margin-right: 25px;
            }

            .blog__details__comment__item__text a {
                margin-right: 6px;
            }

            .login__social__links ul li a i {
                left: 20px;
            }

            .login__form .forget_pass {
                position: relative;
                left: 0;
                bottom: 0;
                margin-top: 25px;
            }

            .header__right a {
                margin-right: 10px;
            }

            .anime__review__item__text h6 span {
                font-size: 12px;
            }

            .anime__review__item__text {
                padding: 18px 20px 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder" style="display: none;">
        <div class="loader" style="display: none;"></div>
    </div>
    <!-- 헤더 -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <h1><a href="/GYE">떼껄룩</a></h1> <!--로고 -->
                </div>
            </div>
            <div id="mobile-menu-wrap">
                <!--하단부 -->
                <div class="slicknav_menu">
                    <a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">

                    </nav>
                </div>
            </div>
        </div>
        <!-- 헤더 끝 -->
        <!-- 로그인 Begin -->
        <!--황근민 수정-->
        <h7>회원가입</h7>
            <div class='lgin_body'>
                <form action='register.do' method='post'>
                    <input id='idname' name='ID' type='text' placeholder='아이디 입력' />
                    <input id='psword' name='PW' type='password' placeholder='비밀번호 입력' />
                    <input id='psword_rpt' name='PW_repeat' type='password' placeholder='비밀번호 한번더' />
                    <input id='name' name='name' type='text' placeholder='이름'/>
                    <input id='age' name='age' type='number' min='1' max='200' placeholder='나이' />
                    <input id='question' name='Question' type='text' placeholder='질문(비밀번호 찾을 때 사용됩니다)'/>
                    <input id='answer' name='Answer' type='text' placeholder='답변'/>

                    <input id='submit_btn' type='submit'/>회원가입
                </form>
            </div>
        <!--황근민 수정-->
        <!-- 로그인 End -->
        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="footer__logo">
                            
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer__nav">
                            <form>
                                <select name='sear_sel'>
                                    <option value=''>영화이름검색</option>
                                    <option value=''>영화사이름검색</option>
                                </select>
                                <input type='text'>
                                <input type='submit'>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->















</body>


</html>