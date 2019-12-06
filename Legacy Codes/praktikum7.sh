
from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

def gan_gen(angka):
    if angka%2 == 0:
        print(angka, "ID Proses", getpid())
    else:
        print(angka, "ID Proses", getpid())
    sleep(1)
def gan_gen2(angka):
    print(angka, "ID Proses rahasia")
if __name__ == '__main__':
    
    angka = int(input())

    angkar = int(input())

    
    
    print("\nPemrosesan Sekuensial")
    sekuensial_awal = time()
    
    for i in range(angka, (angkar+angka+1)-angka):
      gan_gen(i)
    
    sekuensial_akhir= time()
    
    
    print("\nPemrosesan Paralel dengan multiprocessing.process")
    kumpulan_proses = []
    
    process_awal = time()
    
    for i in range(angka,(angkar+angka+1)-angka):
      p = Process(target=gan_gen2, args=(i,))
      kumpulan_proses.append(p)
      p.start()
    
    for i in kumpulan_proses:
      p.join()
    
    process_akhir = time()
    
    
    print("\nPemrosesan Paralel dengan multiprocessing.pool")
    pool_awal = time()
    
    pool = Pool()
    pool.map(gan_gen, range(angka,(angkar+angka+1)-angka))
    pool.close()
    
    pool_akhir = time()
    
print("\nSekuensial", sekuensial_akhir-sekuensial_awal, "detik")
print("multiprocessing.process", process_akhir-process_awal, "detik")
print("multiprocessing.pool", pool_akhir-pool_awal, "detik")
