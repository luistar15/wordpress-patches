# Wordpress & Plugins patches

### Instructions:

- Run `apply.sh` scripts from the `wordpress` parent folder.
- The parent folder must have a git repository.

Example:

```
/path/to/project/
└─ wordpress/
   ├─ wp-config.php
   ├─ index.php
   └─ ...

/path/to/patches/
├─ core/
│  ├─ apply.sh
│  └─ *.diff
│
└─ plugins/
	└─ ...
```

```
> cd /path/to/project
> bash /path/to/patches/core/apply.sh
```

## Wordpress core (6.3-beta4)

### `track-22895.diff`
- Access denied to custom post type listing in admin when his submenu is empty
- https://core.trac.wordpress.org/ticket/22895
- https://github.com/WordPress/wordpress-develop/pull/3024

### `track-56252.diff`
- Allow error_reporting level to be configurable for WP_DEBUG
- https://core.trac.wordpress.org/ticket/56252
- https://github.com/WordPress/wordpress-develop/pull/2994

### `track-56521.diff`
- wp_kses wp_kses_hair fails to allow a valueless attribute when is follwed by /
- https://core.trac.wordpress.org/ticket/56521
- https://github.com/WordPress/wordpress-develop/pull/3200

### `clone-post.diff`
- Clone $_POST var before addslashes


## Plugin: sg-security (1.4.5)

### `capture-real-ip.diff`
- Fix capture user real ip
- https://wordpress.org/support/topic/issues-working-behind-proxy-getting-blocked/#post-16653651


## Plugin: enable-media-replace (4.1.2)

### `disable-bg-remove.diff`
- Disable background remover
