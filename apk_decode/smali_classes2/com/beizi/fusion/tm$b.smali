.class Lcom/beizi/fusion/tm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/tm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/beizi/fusion/e7$a;

.field final synthetic b:Lcom/beizi/fusion/tm;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/tm;Lcom/beizi/fusion/e7$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/tm$b;->b:Lcom/beizi/fusion/tm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/tm$b;->a:Lcom/beizi/fusion/e7$a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/tm;Lcom/beizi/fusion/e7$a;Lcom/beizi/fusion/tm$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/tm$b;-><init>(Lcom/beizi/fusion/tm;Lcom/beizi/fusion/e7$a;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/beizi/fusion/wm;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/beizi/fusion/wm;-><init>(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/beizi/fusion/wm;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/beizi/fusion/tm$b;->a:Lcom/beizi/fusion/e7$a;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p2, p1}, Lcom/beizi/fusion/e7$a;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
