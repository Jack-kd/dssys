.class Lcom/octopus/ad/internal/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/w;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/w;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/w$1;->a:Lcom/octopus/ad/internal/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/w$1;->a:Lcom/octopus/ad/internal/w;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/w;->a(Lcom/octopus/ad/internal/w;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
