package org.fourthline.cling.registry;

import org.fourthline.cling.model.ExpirationDetails;

/* loaded from: classes5.dex */
class RegistryItem<K, I> {
    private ExpirationDetails expirationDetails;
    private I item;
    private K key;

    public RegistryItem(K k2) {
        this.expirationDetails = new ExpirationDetails();
        this.key = k2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.key.equals(((RegistryItem) obj).key);
    }

    public ExpirationDetails getExpirationDetails() {
        return this.expirationDetails;
    }

    public I getItem() {
        return this.item;
    }

    public K getKey() {
        return this.key;
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ") " + getExpirationDetails() + " KEY: " + getKey() + " ITEM: " + getItem();
    }

    public RegistryItem(K k2, I i2, int i3) {
        this.expirationDetails = new ExpirationDetails();
        this.key = k2;
        this.item = i2;
        this.expirationDetails = new ExpirationDetails(i3);
    }
}
