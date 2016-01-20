# .bashrc

# Append this file with new alias and reload it
# <a> <alias> <command>
# For example: a desk "cd /Desktop"
function a {
    echo >> ~/.bashrc
    echo "alias ${1}='${2}'" >> ~/.bashrc
    . ~/.bashrc
}
