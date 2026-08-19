.class public interface abstract Landroidx/browser/trusted/TokenStore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract load()Landroidx/browser/trusted/Token;
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation
.end method

.method public abstract store(Landroidx/browser/trusted/Token;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
