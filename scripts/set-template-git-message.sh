ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && cd .. && pwd )"

TEMPLATE="${ROOT_DIR}/.gitmessage"

echo $TEMPLATE

git config commit.template $TEMPLATE
