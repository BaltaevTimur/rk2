name: CPack

on:
 push:
   tags:
     - v**

jobs: 

  build_packages_Linux:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
	
	- name: Config ConceptualExample
	  run: cmake ${{github.workspace}} -B ${{github.workspace}}/build -D PRINT_VERSION=${GITHUB_REF_NAME#v}
    
	- name: Build ConceptualExample
	  run: cmake --build ${{github.workspace}}/build

    - name: Build package
      run: cmake --build ${{github.workspace}}/build --target package

    - name: Build source package
      run: cmake --build ${{github.workspace}}/build --target package_source

    - name: Make a release
      uses: ncipollo/release-action@v1.10.0
      with:
        artifacts: "build/*.deb,build/*.tar.gz,build/*.zip"
        token: ${{ secrets.GITHUB_TOKEN }}
