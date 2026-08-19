.class Lcom/octopus/ad/internal/q$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/utils/OctUtil$E;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/q;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/q$5;->a:Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q$5;->a:Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/octopus/ad/internal/q;->a(Lcom/octopus/ad/internal/q;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
