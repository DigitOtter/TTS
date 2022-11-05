import multiprocessing
multiprocessing.freeze_support()

from TTS.server import server


def main(run_in_subproc=True):
    if run_in_subproc:
        q = multiprocessing.Queue()
        p = multiprocessing.Process(target=server.start_server, args=(q,))
        p.start()
        q.get(block=True)
        p.terminate()
    else:
        server.main()

if __name__ == "__main__":
        main(server.args.subproc)
