

                  ,-'".

                 ,@@o. )

                (_      )

               s  S.    '

                )=  "? /

                \     (`

                 `-;   \

                  /,-.  )

                ,-'"-.`-'|

               ( /\/{_\  !

              ,/\/\/ {_\ ;

             /\/\/\    {V

           ,/\/\// )    (_

         ,\/\/\//,-       `-.

        /\/\/\/-' \_         `-.

   __,--\/\/\/( '.  `-.         `.

    ///`-\/\/  \  `.   `-.__      `.

         ,\/    `.  `.       `----''\

        /         `.  `-.            \

       /            `-.  `-.          \

      /                `-.  `----'--'" \

     /                    `-.____.__.-'-'

    /                                    \

  /                                        \

/                                            \

 `--___-_                            __-__--'

         `-___-_                ___-'

                `---___-_____--'

                   | |   |

                   | |  /

                   |=|=(_

                   ( (  |)

                   |_|_,|

                   | |  )

                   `-`-'
------------------------------------------------


# SRAM 256x8 test wrapper

Test wrapper for the IHP SG13G2 SRAM macro `RM_IHPSG13_1P_256x8_c3_bm_bist`.

## Pinout

| Signal | Direction | Fonction |
|--------|-----------|----------|
| `ui_in[7:0]` | Input | Data to write (A_DIN) |
| `uo_out[7:0]` | Output | Data read (A_DOUT) |
| `uio_in[7:0]` | Input | Address (A_ADDR, 256 words) |
| `rst_n` | Input | 0 = write, 1 = read |
| `clk` | Input | Clock (rising edge) |

## Usage

Write: `rst_n=0`, set address on `uio_in`, data on `ui_in`, pulse `clk`.

Read: `rst_n=1`, set address on `uio_in`, pulse `clk`, read `uo_out`.

- [Detailed documentation](docs/info.md)
