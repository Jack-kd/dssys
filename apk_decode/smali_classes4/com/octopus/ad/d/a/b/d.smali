.class public Lcom/octopus/ad/d/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/d/a/c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/octopus/ad/d/a/e;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Lcom/octopus/ad/d/a/e;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/octopus/ad/d/a/c;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
