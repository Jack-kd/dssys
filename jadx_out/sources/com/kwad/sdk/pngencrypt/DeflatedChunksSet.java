package com.kwad.sdk.pngencrypt;

import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class DeflatedChunksSet {
    protected final boolean bjR;
    protected byte[] bkh;
    private int bki;
    private int bkj;
    private int bkk;
    State bkl;
    private final boolean bkm;
    private d bkn;
    private long bko;
    private long bkp;
    int bkq;
    int bkr;
    public final String bks;
    private Inflater inf;

    public enum State {
        WAITING_FOR_INPUT,
        ROW_READY,
        DONE,
        CLOSED;

        public final boolean isClosed() {
            return this == CLOSED;
        }

        public final boolean isDone() {
            return this == DONE || this == CLOSED;
        }
    }

    public DeflatedChunksSet(String str, boolean z2, int i2, int i3, Inflater inflater, byte[] bArr) throws DataFormatException {
        State state = State.WAITING_FOR_INPUT;
        this.bkl = state;
        this.bko = 0L;
        this.bkp = 0L;
        this.bkq = -1;
        this.bkr = -1;
        this.bks = str;
        this.bjR = z2;
        this.bkj = i2;
        if (i2 <= 0 || i3 < i2) {
            throw new PngjException("bad inital row len " + i2);
        }
        if (inflater != null) {
            this.inf = inflater;
            this.bkm = false;
        } else {
            this.inf = new Inflater();
            this.bkm = true;
        }
        this.bkh = (bArr == null || bArr.length < i2) ? new byte[i3] : bArr;
        this.bkk = -1;
        this.bkl = state;
        try {
            fk(i2);
        } catch (RuntimeException e2) {
            close();
            throw e2;
        }
    }

    private boolean SQ() throws DataFormatException {
        int iInflate;
        try {
            if (this.bkl == State.ROW_READY) {
                new PngjException("invalid state");
            }
            if (this.bkl.isDone()) {
                return false;
            }
            byte[] bArr = this.bkh;
            if (bArr == null || bArr.length < this.bkj) {
                this.bkh = new byte[this.bkj];
            }
            if (this.bki < this.bkj && !this.inf.finished()) {
                try {
                    Inflater inflater = this.inf;
                    byte[] bArr2 = this.bkh;
                    int i2 = this.bki;
                    iInflate = inflater.inflate(bArr2, i2, this.bkj - i2);
                } catch (DataFormatException e2) {
                    new PngjException("error decompressing zlib stream ", e2);
                    iInflate = 0;
                }
                this.bki += iInflate;
                this.bkp += iInflate;
            }
            State state = this.bki == this.bkj ? State.ROW_READY : !this.inf.finished() ? State.WAITING_FOR_INPUT : this.bki > 0 ? State.ROW_READY : State.DONE;
            this.bkl = state;
            if (state != State.ROW_READY) {
                return false;
            }
            SR();
            return true;
        } catch (RuntimeException e3) {
            close();
            throw e3;
        }
    }

    public final void Gr() {
        if (isDone()) {
            return;
        }
        this.bkl = State.DONE;
    }

    public void SR() {
    }

    public int SS() {
        throw new PngjException("not implemented");
    }

    public final int ST() {
        return this.bkk;
    }

    public final void a(d dVar) {
        if (!this.bks.equals(dVar.SD().id)) {
            new PngjException("Bad chunk inside IdatSet, id:" + dVar.SD().id + ", expected:" + this.bks);
        }
        this.bkn = dVar;
        int i2 = this.bkq + 1;
        this.bkq = i2;
        int i3 = this.bkr;
        if (i3 >= 0) {
            dVar.fj(i2 + i3);
        }
    }

    public final void b(byte[] bArr, int i2, int i3) throws DataFormatException {
        this.bko += i3;
        if (i3 <= 0 || this.bkl.isDone()) {
            return;
        }
        if (this.bkl == State.ROW_READY) {
            new PngjException("this should only be called if waitingForMoreInput");
        }
        if (this.inf.needsDictionary() || !this.inf.needsInput()) {
            throw new RuntimeException("should not happen");
        }
        this.inf.setInput(bArr, i2, i3);
        if (!this.bjR) {
            SQ();
            return;
        }
        while (SQ()) {
            fk(SS());
            isDone();
        }
    }

    public void close() {
        Inflater inflater;
        try {
            if (!this.bkl.isClosed()) {
                this.bkl = State.CLOSED;
            }
            if (!this.bkm || (inflater = this.inf) == null) {
                return;
            }
            inflater.end();
            this.inf = null;
        } catch (Exception unused) {
        }
    }

    public final void fk(int i2) throws DataFormatException {
        this.bki = 0;
        this.bkk++;
        if (i2 <= 0) {
            this.bkj = 0;
            Gr();
        } else {
            if (this.inf.finished()) {
                this.bkj = 0;
                Gr();
                return;
            }
            this.bkl = State.WAITING_FOR_INPUT;
            this.bkj = i2;
            if (this.bjR) {
                return;
            }
            SQ();
        }
    }

    public final boolean ho(String str) {
        if (this.bkl.isClosed()) {
            return false;
        }
        if (str.equals(this.bks)) {
            return true;
        }
        if (this.bkl.isDone()) {
            if (!this.bkl.isClosed()) {
                close();
            }
            return false;
        }
        throw new PngjException("Unexpected chunk " + str + " while " + this.bks + " set is not done");
    }

    public final boolean isClosed() {
        return this.bkl.isClosed();
    }

    public final boolean isDone() {
        return this.bkl.isDone();
    }

    public String toString() {
        return new StringBuilder("idatSet : " + this.bkn.SD().id + " state=" + this.bkl + " rows=" + this.bkk + " bytes=" + this.bko + ServiceReference.DELIMITER + this.bkp).toString();
    }
}
