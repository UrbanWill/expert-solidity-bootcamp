# Homework-3

#### 1 - Optimizing Storage:

A - Take <a href="https://gist.github.com/extropyCoder/6e9b5d5497b8ead54590e72382cdca24">this contract</a>. Use the <a href="https://github.com/naddison36/sol2uml">sol2uml</a> tool to find out how many storage slots it is using.

B - By re ordering the variables, can you reduce the number of storage slots needed?

### 2 - Foundry introduction:

A - Install Foundry. First run the command below to get `foundryup` , the Foundry toolchain installer:

```shell
$ curl -L https://foundry.paradigm.xyz | bash
```

If you do not want to use the redirect, feel free to manually download the foundryup installation script from <a href="https://raw.githubusercontent.com/foundry-rs/foundry/master/foundryup/install">here</a>.

B - Create a project and run the tests supplied to familiarize yourself with Foundry:

- Use forge init <project_name> for the default
  template
  or
- Use this <a href="https://github.com/PaulRBerg/foundry-template">template</a>

C - Run the tests supplied to familiarize yourself with
Foundry

### 3 - Try out the Solidity Template or the Foundry Template

A - Start a new project using the Solidity Template.

B - Make a fork of mainnet from the command line (you may need to setup an Infura or Alchemy account).

C - Query the mainnet using the command line to retrieve a
property such as latest block number.

### 4 - Is this valid solidity?

```
contract MyCon {
    function a(
        function(
        function(
          function(
            function(
              function(
                function(
                  function(
                    function(
                      function() external pure
                    ) external pure
                  ) external pure
                ) external pure
              ) external pure
            ) external pure
          ) external pure
        ) external pure
        ) external pure
    ) external pure {}
}
```
