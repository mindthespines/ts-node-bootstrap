#! make
DIST=./dist
MAIN=${DIST}/main.js

BUILD=npx tsc
BUILD_WATCH=${BUILD} --watch --preserveWatchOutput
START_WATCH=npx wait-on ${MAIN} && npx nodemon ${MAIN}

TEST=npx jest --verbose
TEST_COV=${TEST} --coverage

LINT=npx eslint .

.PHONY: *

clean:
	npx rimraf ${DIST}

build: clean
	${BUILD}

start: clean
	npx concurrently \
	-c cyan,magenta \
	-n tsc,nodemon \
	"${BUILD_WATCH}" "${START_WATCH}"

test:
	${TEST}

test-cov:
	${TEST_COV}

lint:
	${LINT}

format:
	npx prettier --write .

fix: format
	${LINT} --fix
	

