SELECT
    *
FROM
    `sys_menu`
WHERE
        `sys_menu`.`menu_id` IN (
                                 3,
                                 43,
                                 44,
                                 45,
                                 46,
                                 58,
                                 59,
                                 60,
                                 61,
                                 62,
                                 211,
                                 212,
                                 216,
                                 236,
                                 237,
                                 238,
                                 239,
                                 240,
                                 241,
                                 242,
                                 243,
                                 244,
                                 245,
                                 246,
                                 247,
                                 248,
                                 249,
                                 250,
                                 251,
                                 261,
                                 262,
                                 264,
                                 269,
                                 459,
                                 460,
                                 461,
                                 462,
                                 463,
                                 464,
                                 471,
                                 528,
                                 529,
                                 531,
                                 537
        )
  AND `sys_menu`.`deleted_at` IS NULL