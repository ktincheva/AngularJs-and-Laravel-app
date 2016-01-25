<?php

return [

    'url' => env('GITHUB_API_URL'),
    'user-agent' => '',
    'users' => [
        'model' => '\App\User', //path to the model
        'class' => 'user', //name of the model 
        'rowsPerPage' => 10,
        'title' => "Manage Users",
        'route' => '/users',
        'columns' => [
            [
                'name' => 'name',
                'label' => "Name Lastname"
            ],
            [
                'name' => 'email',
                'label' => "Email"
            ],
        ],
        'create_form' => [
            'fields' => [
                [
                    'name' => 'name',
                    'label' => 'Name Lastname',
                    'type' => 'text'
                ],
                [
                    'name' => 'email',
                    'label' => 'Email',
                    'type' => 'email'
                ],
            ],
            'rules' =>
            ['name' => 'required|min:5', 'email' => 'required|email|unique:users'],
        ],
        'create_form' => [
            'fields' => [
                [
                    'name' => 'name',
                    'label' => 'Name Lastname',
                    'type' => 'text'
                ],
                [
                    'name' => 'email',
                    'label' => 'Email',
                    'type' => 'email'
                ],
            ],
            'rules' =>
            ['name' => 'required|min:5', 'email' => 'required|email|unique:users'],
        ],
        'update_form' => [
            'fields' => [
                [
                    'name' => 'name',
                    'label' => 'Name Lastname',
                    'type' => 'text'
                ],
                [
                    'name' => 'email',
                    'label' => 'Email',
                    'type' => 'email'
                ],
            ],
            'rules' =>
            ['name' => 'required|min:5', 'email' => 'required|email|unique:users'],
        ],
    ],
    'cities' => [
        'model' => '\App\Models\Cities', //path to the model
        'class' => 'cities', //name of the model 
        'rowsPerPage' => 10,
        'title' => "Manage Cities",
        'route' => '/cities',
        'columns' => [
            [
                'name' => 'name',
                'label' => "Citi Name"
            ],
        ],
        'create_form' => [
            'fields' => [
                [
                    'name' => 'name',
                    'label' => 'Name City',
                    'type' => 'text'
                ],
            ],
            'rules' =>
            ['name' => 'required|min:3|unique:cities'],
        ],
        'update_form' => [
            'fields' => [
                [
                    'name' => 'name',
                    'label' => 'City Name',
                    'type' => 'text'
                ],
            ],
            'rules' =>
            ['name' => 'required|min:3|unique:cities'],
        ],
    ],
    'tickets' => [
        'model' => '\App\Models\Tickets', //path to the model
        'class' => 'tickets', //name of the model 
        'rowsPerPage' => 10,
        'title' => "Manage Tickets",
        'route' => '/tickets',
        'columns' => [
            [
                'name' => 'directions',
                'label' => "Directions",
                'model' => 'Tickets::with("stations")',
            ],
            [
                'name' => 'from_city',
                'label' => 'From City',
                'type' => 'text',
                'model'=>'Cities.getName()'
            ],
            [
                'name' => 'to_city',
                'label' => 'To City',
                'type' => 'text'
            ],
            [
                'name' => 'quantity',
                'label' => 'Quantity',
                'type' => 'number'
            ],
            [
                'name' => 'price',
                'label' => 'Price',
                'type' => 'number'
            ],
            [
                'name' => 'discount',
                'label' => 'Discount',
                'type' => 'number'
            ],
        ],
        'create_form' => [
            'fields' => [
                [
                    'name' => '',
                    'label' => "Directions",
                    'type'=>'text',
                    'model' => 'Directions::with("stations")',
                ],
                [
                    'name' => 'from_city',
                    'label' => 'From City',
                    'type' => 'select',
                    'model' => 'Directions::with("stations")',
                ],
                [
                    'name' => 'to_city',
                    'label' => 'To City',
                    'type' => 'select',
                    'model' => 'Directions::with("stations")',
                ],
                [
                    'name' => 'quantity',
                    'label' => 'Price',
                    'type' => 'number'
                ],
                [
                    'name' => 'price',
                    'label' => 'Price',
                    'type' => 'number'
                ],
                [
                    'name' => 'discount',
                    'label' => 'Price',
                    'type' => 'number'
                ],
                'rules' =>
                ['name' => 'required|min:3|unique:cities'],
            ],
        ],
        'update_form' => [
            'fields' => [
                [
                    'name' => 'directions',
                    'label' => "Directions",
                    'model' => 'Directions::with("cities")',
                ],
                [
                    'name' => 'from_city',
                    'label' => 'From City',
                    'type' => 'select',
                    'model' => 'Directions::with("stations")',
                ],
                [
                    'name' => 'to_city',
                    'label' => 'To City',
                    'type' => 'select',
                    'model' => 'Directions::with("stations")',
                ],
                [
                    'name' => 'quantity',
                    'label' => 'Price',
                    'type' => 'number'
                ],
                [
                    'name' => 'price',
                    'label' => 'Price',
                    'type' => 'number'
                ],
                [
                    'name' => 'discount',
                    'label' => 'Price',
                    'type' => 'number'
                ],
            ],
            'rules' =>
            ['name' => 'required|min:3|unique:cities'],
        ],
    ],
];
