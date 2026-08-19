.class public Lcom/octopus/ad/a/c$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$k;->a:I

    return v0
.end method

.method public a(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/a/c$k;->c:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$k;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$k;->b:I

    return v0
.end method

.method public b(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/a/c$k;->d:D

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$k;->b:I

    return-void
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/a/c$k;->c:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/a/c$k;->d:D

    .line 2
    .line 3
    return-wide v0
.end method
