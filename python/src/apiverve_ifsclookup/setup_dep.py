from setuptools import setup, find_packages

setup(
    name='apiverve_ifsclookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='IFSC Lookup is an IFSC code search API that verifies Indian bank branch details from any IFSC code, returning the bank name, branch, street address, and district. It confirms city and state records, while paid plans add transfer modes like NEFT and UPI.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/ifsclookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
