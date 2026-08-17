.class Lcom/octopus/ad/internal/q$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/q$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/octopus/ad/internal/q$6;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/q$6;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/q$6$1;->b:Lcom/octopus/ad/internal/q$6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/q$6$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "AppBackground"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/q$6$1;->b:Lcom/octopus/ad/internal/q$6;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/octopus/ad/internal/q$6;->b:Lcom/octopus/ad/internal/q;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/q$6$1;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/q;->b(Lcom/octopus/ad/internal/q;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/k;->b(Lcom/octopus/ad/internal/k$a;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
