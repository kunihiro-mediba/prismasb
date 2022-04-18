CREATE TABLE `User` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `email` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `User` (`id`, `email`, `name`) VALUES
(1, 'foo@example.com', 'Foo'),
(2, 'bar@example.com', 'Bar'),
(3, 'hoge@example.com', 'Hoge');

CREATE TABLE `Post` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    `userId` bigint unsigned NOT NULL,
    `title` varchar(255) NOT NULL,
    `body` varchar(255) NOT NULL,
    `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY `userId` (`userId`) REFERENCES `User` (`id`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Post` (`userId`, `title`, `body`) VALUES
(1, "hello", "Hello,World!"),
(1, "goodbye", "Good-bye!!");
