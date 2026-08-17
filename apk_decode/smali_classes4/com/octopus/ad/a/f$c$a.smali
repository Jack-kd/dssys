.class public final Lcom/octopus/ad/a/f$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/octopus/ad/a/g$d;

.field private b:Lcom/octopus/ad/a/g$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/a/g$c;)Lcom/octopus/ad/a/f$c$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/f$c$a;->b:Lcom/octopus/ad/a/g$c;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/a/g$d;)Lcom/octopus/ad/a/f$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/a/f$c$a;->a:Lcom/octopus/ad/a/g$d;

    return-object p0
.end method

.method public a()Lcom/octopus/ad/a/f$c;
    .locals 2

    .line 3
    new-instance v0, Lcom/octopus/ad/a/f$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/a/f$c;-><init>(Lcom/octopus/ad/a/f$1;)V

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/a/f$c$a;->a:Lcom/octopus/ad/a/g$d;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/f$c;->a(Lcom/octopus/ad/a/f$c;Lcom/octopus/ad/a/g$d;)Lcom/octopus/ad/a/g$d;

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/a/f$c$a;->b:Lcom/octopus/ad/a/g$c;

    invoke-static {v0, v1}, Lcom/octopus/ad/a/f$c;->a(Lcom/octopus/ad/a/f$c;Lcom/octopus/ad/a/g$c;)Lcom/octopus/ad/a/g$c;

    return-object v0
.end method
