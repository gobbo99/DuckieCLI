#!/usr/bin/python3.11
import requests
from requests.exceptions import ConnectionError
import click

auth_token1 = ''

@click.command()
@click.option('--domains','-d', help='Enter domains that will be updated with new IP address', multiple=True, required=True)
@click.option('-ip','--ip', prompt='Enter ip to update', help='Enter ip that will be updated for duckdns domain record', required=True)
@click.option('-a','--token', help='Enter authentication token', required=False)
def update_ip(ip, domains, token):
    if not token:
        token = auth_token1
    domains = ','.join(domains)
    print(f'Domains: {domains}')
    base_url = f'https://www.duckdns.org/update?domains={domains}&token={token}&ip={ip}'

    try:
        print(f'ip:{ip}')
        print(base_url)
        response = requests.get(url=base_url)
    except ConnectionError as e:
        print('Error!!! ' + e)

    if 'KO' in response.text:
        print(response.text)
        return -1
    elif 'OK' in response.text:
        print('Updated!')
        return 0
    else:
        print('What the hell?') 
        return -1

if __name__ == '__main__':
    update_ip()





