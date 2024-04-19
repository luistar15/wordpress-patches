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

## Wordpress core (6.5)

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

### `theme.json.diff`
- Remove default color palette, grandients and duotone presets

### `theme-json.php.diff`
- Remove `!important` from css `var()` calls


## Plugin: sg-security (1.4.13)

### `capture-real-ip.diff`
- Fix capture user real ip
- https://wordpress.org/support/topic/issues-working-behind-proxy-getting-blocked/#post-16653651

### `encryption-key-constant.diff`
- Use SGS_ENCRYPTION_KEY constant instead of file
- https://wordpress.org/support/topic/read-sgs_encryption_key-from-constant-instead-of-file/

### `disable-block-user-by-ip-check.diff`
- Disables checking blocked users by ip


## Plugin: enable-media-replace (4.1.5)

### `disable-bg-remove.diff`
- Disable background remover
- Skip success screen


## Plugin: slim-seo (3.23.3)

### `remove-review-links.diff`
- Remove noisy review link in plugins list


## Plugin: wp-svg-images (4.2)

### `fix-missing-svg-size.diff`
- Removes unnecesary sql queries when trying to fix missing svg size

### `disable-upsell.diff`
- Removes additional plugin offers


## Plugin: post-types-order (2.2.1)

### `multi-patch.diff`
- Remove icon in submenu
- Display move handler on mouse hover
- Hide ads


## Plugin: meta-box (5.9.7)

### `remove-unuse-third-party-support.diff`
- Remove WPML Compatibility
- Remove categories for page builders (Oxygen,Elementor,Bricks)
- Remove About admin page
