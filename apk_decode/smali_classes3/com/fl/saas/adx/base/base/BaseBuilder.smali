.class public abstract Lcom/fl/saas/adx/base/base/BaseBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/base/interfaces/AdViewListener;"
    }
.end annotation


# instance fields
.field protected builder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private isHot:Z

.field private key:Ljava/lang/String;

.field private linkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->isHot:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->contextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getBuilder()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object v0
.end method

.method public getContextRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->isHot:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
.end method

.method public setIsHot(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->isHot:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->key:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setLinkId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->linkId:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method
