.class Lcom/beizi/fusion/i7$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/i7$c;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/beizi/fusion/i7$c;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/i7$c;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/i7$c$b;->b:Lcom/beizi/fusion/i7$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/i7$c$b;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i7$c$b;->b:Lcom/beizi/fusion/i7$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/i7$c;->a(Lcom/beizi/fusion/i7$c;)Lcom/beizi/fusion/i7$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/i7$c$b;->b:Lcom/beizi/fusion/i7$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/i7$c;->a(Lcom/beizi/fusion/i7$c;)Lcom/beizi/fusion/i7$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/i7$c$b;->a:Ljava/io/File;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/beizi/fusion/i7$b;->a(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
