package com.byazt.jv;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 303, 28})
/* loaded from: classes.dex */
public final class hp<T> implements BlockingQueue<T> {
    public final BlockingQueue<T> hp;

    public hp(BlockingQueue blockingQueue) {
        if (blockingQueue == null) {
            this.hp = new SynchronousQueue();
        } else {
            this.hp = blockingQueue;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue, java.util.Collection
    public boolean add(T t2) {
        return this.hp.add(t2);
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return this.hp.addAll(collection);
    }

    @Override // java.util.Collection
    public void clear() {
        this.hp.clear();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean contains(Object obj) {
        return this.hp.contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return this.hp.containsAll(collection);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection) {
        return this.hp.drainTo(collection);
    }

    @Override // java.util.Queue
    public T element() {
        return this.hp.element();
    }

    public final String hp() {
        return this.hp.getClass().getName();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.hp.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return this.hp.iterator();
    }

    public int jx() {
        return this.hp.size();
    }

    public final BlockingQueue l() {
        return this.hp;
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean offer(T t2) {
        return this.hp.offer(t2);
    }

    @Override // java.util.Queue
    public T peek() {
        return this.hp.peek();
    }

    @Override // java.util.concurrent.BlockingQueue
    public T poll(long j2, TimeUnit timeUnit) throws InterruptedException {
        try {
            return this.hp.poll(j2, timeUnit);
        } catch (IllegalMonitorStateException unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(T t2) throws InterruptedException {
        this.hp.put(t2);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.hp.remainingCapacity();
    }

    @Override // java.util.Queue
    public T remove() {
        return this.hp.remove();
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return this.hp.removeAll(collection);
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return this.hp.retainAll(collection);
    }

    @Override // java.util.Collection
    public final int size() {
        return jx();
    }

    @Override // java.util.concurrent.BlockingQueue
    public T take() throws InterruptedException {
        return this.hp.take();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return new Object[0];
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection, int i2) {
        return this.hp.drainTo(collection, i2);
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(T t2, long j2, TimeUnit timeUnit) throws InterruptedException {
        return this.hp.offer(t2, j2, timeUnit);
    }

    @Override // java.util.Queue
    public T poll() {
        return this.hp.poll();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean remove(Object obj) {
        return this.hp.remove(obj);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }
}
