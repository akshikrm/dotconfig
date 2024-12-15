# Configuring ESLint with Neovim Quickfix List

You can configure Neovim to use ESLint errors to populate the quickfix list by
setting the `makeprg` option to run ESLint with the **Unix format**. This allows
you to easily jump between errors and warnings in your project.

---

## **Step 1: Install the Unix Formatter for ESLint**

The Unix formatter does not come with ESLint by default. Install it using the
following command:

```bash
npm install -D eslint-formatter-unix
```

---

## **Step 2: Configure Neovim**

There are multiple approaches to integrate ESLint with Neovim. Choose the one
that best suits your workflow:

### **Option 1: Directly Set the Make Program to Use ESLint**

You can configure Neovim to directly run ESLint using the installed Unix
formatter.

1. Set the `makeprg` option to execute ESLint:

```vim
      :set makeprg=npx\ eslint\ -f\ unix
```

2. Run the `:make` command:

```vim
:make
```

3. Open the quickfix list to view and navigate errors:

```vim
   :cw
```

---

### **Option 2: Use a Custom `lint` Script in `package.json`**

If your project uses a `lint` script in `package.json`, you can point the `makeprg` option to that script.

1.  Modify the `lint` script in your `package.json` to
    include the Unix formatter. Example:

    ```json
       "scripts": {
              "lint": "eslint -f unix ."
                 }
    ```

2.  Set the `makeprg` option in Neovim:

    ```vim
        :set makeprg=npm\ run\
        lint
    ```

3.  Run the `:make` command:

    ```vim
       :make
    ```

---

### **Option 3: Use a Makefile**

For a more persistent and reusable solution, you can define a `lint` target in a
`Makefile`. This approach avoids having to set the `makeprg` option every time
you open Neovim.

1.  Create a `Makefile` with the following target:

    ```Makefile
    lint:
    npm run lint
    ```

2.  Call the `lint` target directly from Neovim:

    ```vim
    :make lint
    ```

---

## **Quickfix Workflow**

After running the `:make` command (using any of the above methods), you can:

- Open the quickfix list:

  ```vim
  :cw
  ```

- Navigate errors and warnings:
  - Use `:cnext` to jump to the next error.
  - Use `:cprev` to jump to the previous error.
