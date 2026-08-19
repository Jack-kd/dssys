package org.eclipse.jetty.util;

import java.util.AbstractList;
import java.util.Collection;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes5.dex */
public class d extends AbstractList implements BlockingQueue {

    /* renamed from: d, reason: collision with root package name */
    public final int f52633d;

    /* renamed from: f, reason: collision with root package name */
    public final int f52635f;

    /* renamed from: g, reason: collision with root package name */
    public volatile int f52636g;

    /* renamed from: h, reason: collision with root package name */
    public Object[] f52637h;

    /* renamed from: i, reason: collision with root package name */
    public final ReentrantLock f52638i;

    /* renamed from: j, reason: collision with root package name */
    public final Condition f52639j;

    /* renamed from: k, reason: collision with root package name */
    public int f52640k;

    /* renamed from: l, reason: collision with root package name */
    public final ReentrantLock f52641l;

    /* renamed from: m, reason: collision with root package name */
    public int f52642m;

    /* renamed from: b, reason: collision with root package name */
    public final int f52631b = 128;

    /* renamed from: c, reason: collision with root package name */
    public final int f52632c = 64;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f52634e = new AtomicInteger();

    public d(int i2, int i3) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f52638i = reentrantLock;
        this.f52639j = reentrantLock.newCondition();
        this.f52641l = new ReentrantLock();
        Object[] objArr = new Object[i2];
        this.f52637h = objArr;
        this.f52636g = objArr.length;
        this.f52635f = i3;
        this.f52633d = Integer.MAX_VALUE;
    }

    public int a() {
        return this.f52636g;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean add(Object obj) {
        return offer(obj);
    }

    public final boolean b() {
        int i2;
        if (this.f52635f <= 0) {
            return false;
        }
        this.f52641l.lock();
        try {
            this.f52638i.lock();
            try {
                int i3 = this.f52640k;
                int i4 = this.f52642m;
                Object[] objArr = new Object[this.f52636g + this.f52635f];
                if (i3 < i4) {
                    i2 = i4 - i3;
                    System.arraycopy(this.f52637h, i3, objArr, 0, i2);
                } else if (i3 > i4 || this.f52634e.get() > 0) {
                    int i5 = (this.f52636g + i4) - i3;
                    int i6 = this.f52636g - i3;
                    System.arraycopy(this.f52637h, i3, objArr, 0, i6);
                    System.arraycopy(this.f52637h, 0, objArr, i6, i4);
                    i2 = i5;
                } else {
                    i2 = 0;
                }
                this.f52637h = objArr;
                this.f52636g = objArr.length;
                this.f52640k = 0;
                this.f52642m = i2;
                this.f52638i.unlock();
                this.f52641l.unlock();
                return true;
            } catch (Throwable th) {
                this.f52638i.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.f52641l.unlock();
            throw th2;
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f52641l.lock();
        try {
            this.f52638i.lock();
            try {
                this.f52640k = 0;
                this.f52642m = 0;
                this.f52634e.set(0);
            } finally {
                this.f52638i.unlock();
            }
        } finally {
            this.f52641l.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public Object element() {
        Object objPeek = peek();
        if (objPeek != null) {
            return objPeek;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i2) {
        this.f52641l.lock();
        try {
            this.f52638i.lock();
            if (i2 >= 0) {
                try {
                    if (i2 < this.f52634e.get()) {
                        int i3 = this.f52640k + i2;
                        if (i3 >= this.f52636g) {
                            i3 -= this.f52636g;
                        }
                        Object obj = this.f52637h[i3];
                        this.f52638i.unlock();
                        return obj;
                    }
                } catch (Throwable th) {
                    this.f52638i.unlock();
                    throw th;
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i2 + "<=" + this.f52634e + ")");
        } finally {
            this.f52641l.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f52634e.get() == 0;
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean offer(Object obj) {
        obj.getClass();
        this.f52641l.lock();
        try {
            if (this.f52634e.get() < this.f52633d) {
                if (this.f52634e.get() == this.f52636g) {
                    this.f52638i.lock();
                    try {
                        if (b()) {
                            this.f52638i.unlock();
                        } else {
                            this.f52638i.unlock();
                        }
                    } finally {
                    }
                }
                Object[] objArr = this.f52637h;
                int i2 = this.f52642m;
                objArr[i2] = obj;
                this.f52642m = (i2 + 1) % this.f52636g;
                boolean z2 = this.f52634e.getAndIncrement() == 0;
                this.f52641l.unlock();
                if (z2) {
                    this.f52638i.lock();
                    try {
                        this.f52639j.signal();
                    } finally {
                    }
                }
                return true;
            }
            this.f52641l.unlock();
            return false;
        } catch (Throwable th) {
            this.f52641l.unlock();
            throw th;
        }
    }

    @Override // java.util.Queue
    public Object peek() {
        if (this.f52634e.get() == 0) {
            return null;
        }
        this.f52638i.lock();
        try {
            return this.f52634e.get() > 0 ? this.f52637h[this.f52640k] : null;
        } finally {
            this.f52638i.unlock();
        }
    }

    @Override // java.util.Queue
    public Object poll() {
        Object obj = null;
        if (this.f52634e.get() == 0) {
            return null;
        }
        this.f52638i.lock();
        try {
            if (this.f52634e.get() > 0) {
                int i2 = this.f52640k;
                Object[] objArr = this.f52637h;
                Object obj2 = objArr[i2];
                objArr[i2] = null;
                this.f52640k = (i2 + 1) % this.f52636g;
                if (this.f52634e.decrementAndGet() > 0) {
                    this.f52639j.signal();
                }
                obj = obj2;
            }
            return obj;
        } finally {
            this.f52638i.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(Object obj) {
        if (!add(obj)) {
            throw new IllegalStateException("full");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        this.f52641l.lock();
        try {
            this.f52638i.lock();
            try {
                return a() - size();
            } finally {
                this.f52638i.unlock();
            }
        } finally {
            this.f52641l.unlock();
        }
    }

    @Override // java.util.Queue
    public Object remove() {
        Object objPoll = poll();
        if (objPoll != null) {
            return objPoll;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i2, Object obj) {
        obj.getClass();
        this.f52641l.lock();
        try {
            this.f52638i.lock();
            if (i2 >= 0) {
                try {
                    if (i2 < this.f52634e.get()) {
                        int i3 = this.f52640k + i2;
                        if (i3 >= this.f52636g) {
                            i3 -= this.f52636g;
                        }
                        Object[] objArr = this.f52637h;
                        Object obj2 = objArr[i3];
                        objArr[i3] = obj;
                        this.f52638i.unlock();
                        return obj2;
                    }
                } catch (Throwable th) {
                    this.f52638i.unlock();
                    throw th;
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i2 + "<=" + this.f52634e + ")");
        } finally {
            this.f52641l.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f52634e.get();
    }

    @Override // java.util.concurrent.BlockingQueue
    public Object take() throws InterruptedException {
        this.f52638i.lockInterruptibly();
        while (this.f52634e.get() == 0) {
            try {
                try {
                    this.f52639j.await();
                } catch (InterruptedException e2) {
                    this.f52639j.signal();
                    throw e2;
                }
            } finally {
                this.f52638i.unlock();
            }
        }
        int i2 = this.f52640k;
        Object[] objArr = this.f52637h;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f52640k = (i2 + 1) % this.f52636g;
        if (this.f52634e.decrementAndGet() > 0) {
            this.f52639j.signal();
        }
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, Object obj) {
        obj.getClass();
        this.f52641l.lock();
        try {
            this.f52638i.lock();
            if (i2 >= 0) {
                try {
                    if (i2 <= this.f52634e.get()) {
                        if (i2 == this.f52634e.get()) {
                            add(obj);
                        } else {
                            if (this.f52642m == this.f52640k && !b()) {
                                throw new IllegalStateException("full");
                            }
                            int i3 = this.f52640k + i2;
                            if (i3 >= this.f52636g) {
                                i3 -= this.f52636g;
                            }
                            this.f52634e.incrementAndGet();
                            int i4 = (this.f52642m + 1) % this.f52636g;
                            this.f52642m = i4;
                            if (i3 < i4) {
                                Object[] objArr = this.f52637h;
                                System.arraycopy(objArr, i3, objArr, i3 + 1, i4 - i3);
                                this.f52637h[i3] = obj;
                            } else {
                                if (i4 > 0) {
                                    Object[] objArr2 = this.f52637h;
                                    System.arraycopy(objArr2, 0, objArr2, 1, i4);
                                    Object[] objArr3 = this.f52637h;
                                    objArr3[0] = objArr3[this.f52636g - 1];
                                }
                                Object[] objArr4 = this.f52637h;
                                System.arraycopy(objArr4, i3, objArr4, i3 + 1, (this.f52636g - i3) - 1);
                                this.f52637h[i3] = obj;
                            }
                        }
                        this.f52638i.unlock();
                        return;
                    }
                } catch (Throwable th) {
                    this.f52638i.unlock();
                    throw th;
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i2 + "<=" + this.f52634e + ")");
        } finally {
            this.f52641l.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i2) {
        this.f52641l.lock();
        try {
            this.f52638i.lock();
            if (i2 >= 0) {
                try {
                    if (i2 < this.f52634e.get()) {
                        int i3 = this.f52640k + i2;
                        if (i3 >= this.f52636g) {
                            i3 -= this.f52636g;
                        }
                        Object[] objArr = this.f52637h;
                        Object obj = objArr[i3];
                        int i4 = this.f52642m;
                        if (i3 < i4) {
                            System.arraycopy(objArr, i3 + 1, objArr, i3, i4 - i3);
                            this.f52642m--;
                            this.f52634e.decrementAndGet();
                        } else {
                            System.arraycopy(objArr, i3 + 1, objArr, i3, (this.f52636g - i3) - 1);
                            if (this.f52642m > 0) {
                                Object[] objArr2 = this.f52637h;
                                int i5 = this.f52636g;
                                Object[] objArr3 = this.f52637h;
                                objArr2[i5] = objArr3[0];
                                System.arraycopy(objArr3, 1, objArr3, 0, this.f52642m - 1);
                                this.f52642m--;
                            } else {
                                this.f52642m = this.f52636g - 1;
                            }
                            this.f52634e.decrementAndGet();
                        }
                        this.f52638i.unlock();
                        return obj;
                    }
                } catch (Throwable th) {
                    this.f52638i.unlock();
                    throw th;
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i2 + "<=" + this.f52634e + ")");
        } finally {
            this.f52641l.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public Object poll(long j2, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j2);
        this.f52638i.lockInterruptibly();
        while (this.f52634e.get() == 0) {
            try {
                try {
                    if (nanos <= 0) {
                        return null;
                    }
                    nanos = this.f52639j.awaitNanos(nanos);
                } catch (InterruptedException e2) {
                    this.f52639j.signal();
                    throw e2;
                }
            } finally {
                this.f52638i.unlock();
            }
        }
        Object[] objArr = this.f52637h;
        int i2 = this.f52640k;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f52640k = (i2 + 1) % this.f52636g;
        if (this.f52634e.decrementAndGet() > 0) {
            this.f52639j.signal();
        }
        return obj;
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(Object obj, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }
}
