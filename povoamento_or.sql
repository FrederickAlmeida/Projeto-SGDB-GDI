INSERT INTO TB_VENDEDOR VALUES(
    TP_VENDEDOR(
        'Caio Possidio',
        'cpv@gmail.com',
        tp_endereco(
            '51111-111',
            'Pernambuco',
            'apto 111',
            'Rua do Caio',
            27,
            'Bairro do Caio',
            'Recife'
            ),
            tp_fones(
                tp_fone('81991111111'),
                tp_fone('81992222222')
            ),
            'BRONZE'
    )
);

INSERT INTO TB_VENDEDOR VALUES(
    TP_VENDEDOR(
        'Rubens',
        'rubinho@gmail.com',
        tp_endereco(
            '52222-222',
            'Pernambuco',
            'apto 222',
            'Rua do Rubens',
            37,
            'Bairro do Rubens',
            'Recife'
            ),
            tp_fones(
                tp_fone('81993333333'),
                tp_fone('81994444444')
            ),
            'PRATA'
        )

INSERT INTO TB_VENDEDOR VALUES(
    TP_VENDEDOR(
        'Fred',
        'fred@gmail.com',
        tp_endereco(
            '53333-333',
            'Pernambuco',
            'apto 333',
            'Rua do Fred',
            47,
            'Bairro do Fred',
            'Recife'
            ),
            tp_fones(
                tp_fone('81995555555'),
                tp_fone('81996666666')
            ),
            'OURO'
        )

INSERT INTO TB_VENDEDOR VALUES(
    TP_VENDEDOR(
        'Ian',
        'ian@gmail.com',
        tp_endereco(
            '54444-444',
            'Pernambuco',
            'apto 444',
            'Rua do Ian',
            57,
            'Bairro do Ian',
            'Recife'
            ),
            tp_fones(
                tp_fone('81997777777'),
                tp_fone('81998888888')
            ),
            'BRONZE'
        )

INSERT INTO TB_COMPRADOR VALUES(
    TP_COMPRADOR(
        'Ian',
        'ian@gmail.com',
        tp_endereco(
            '54444-444',
            'Pernambuco',
            'apto 444',
            'Rua do Ian',
            57,
            'Bairro do Ian',
            'Recife'
            ),
            tp_fones(
                tp_fone('81997777777'),
                tp_fone('81998888888')
            ),
            tp_cartao_de_credito(
                '123',
                '1234567890123456',
                '12/22'
            )
        )

INSER INTO TB_COMPRADOR VALUES(
    TP_COMPRADOR(
        'Palao',
        'palao@gmail.com',
        tp_endereco(
            '55555-555',
            'Pernambuco',
            'apto 555',
            'Rua do Palao',
            67,
            'Bairro do Palao',
            'Recife'
            ),
            tp_fones(
                tp_fone('81999999999'),
                tp_fone('81990000000')
            ),
            tp_cartao_de_credito(
                '321',
                '1234567890123456',
                '12/22'
            )
        )
)

INSER INTO TB_COMPRADOR VALUES(
    TP_COMPRADOR(
        'Queiroz',
        'queiroz@gmail.com',
        tp_endereco(
            '56666-666',
            'Pernambuco',
            'apto 666',
            'Rua do Queiroz',
            77,
            'Bairro do Queiroz',
            'Recife'
            ),
            tp_fones(
                tp_fone('81991111111'),
                tp_fone('81992222222')
            ),
            tp_cartao_de_credito(
                '456',
                '1234567890123456',
                '12/22'
            )
        )

INSERT INTO TB_COMPRADOR VALUES(
    TP_COMPRADOR(
        'Neiva',
        'neiva@gmail.com'
        tp_endereco(
            '57777-777',
            'Pernambuco',
            'apto 777',
            'Rua do Neiva',
            87,
            'Bairro do Neiva',
            'Recife'
            ),
            tp_fones(
                tp_fone('81993333333'),
                tp_fone('81994444444')
            ),
            tp_cartao_de_credito(
                '654',
                '1234567890123456',
                '12/22'
            )
        )

INSERT INTO TB_MOTOBOY VALUES(
    TP_MOTOBOY(
        '111.111.111-11',
        '11111111111',
        'Recife',
        NULL,
        'BRONZE'
    )
)

INSERT INTO TB_MOTOBOY VALUES(
    TP_MOTOBOY(
        '222.222.222-22',
        '22222222222',
        'Recife',
        '111.111.111-11',
        'PRATA'
    )
)

INSERT INTO TB_MOTOBOY VALUES(
    TP_MOTOBOY(
        '333.333.333-33',
        '33333333333',
        'Recife',
        '111.111.111-11',
        'OURO'
    )
)

INSERT INTO TB_CUPOM VALUES(
    TP_CUPOM(
        00001,
        10
    )
)

INSERT INTO TB_CUPOM VALUES(
    TP_CUPOM(
        00002,
        30
    )
)

INSERT INTO TB_CUPOM VALUES(
    TP_CUPOM(
        00003,
        50
    )
)

INSERT INTO TB_CUPOM VALUES(
    TP_CUPOM(
        00004,
        70
    )
)
