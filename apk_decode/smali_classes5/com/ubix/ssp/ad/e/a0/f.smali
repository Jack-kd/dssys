.class public Lcom/ubix/ssp/ad/e/a0/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/f$n;,
        Lcom/ubix/ssp/ad/e/a0/f$s;,
        Lcom/ubix/ssp/ad/e/a0/f$o;,
        Lcom/ubix/ssp/ad/e/a0/f$r;,
        Lcom/ubix/ssp/ad/e/a0/f$q;,
        Lcom/ubix/ssp/ad/e/a0/f$p;
    }
.end annotation


# static fields
.field private static volatile a:Z = false

.field private static b:Ljava/util/Timer; = null

.field private static c:Ljava/util/TimerTask; = null

.field private static volatile d:Z = false

.field private static e:Z = false


# instance fields
.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Lcom/ubix/ssp/ad/d/l;

.field volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/l;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->j:Z

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    if-eqz p2, :cond_0

    const-string p1, "__NO_CLICK_CONFIRM_KEY__"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/f;->g:Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/f;)Lcom/ubix/ssp/ad/d/l;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    return-object p0
.end method

.method public static a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;
    .locals 1

    .line 4
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/y/a/a$c;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/y/a/a$c;->n:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/ubix/ssp/ad/d/a;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {}, Lcom/ubix/ssp/ad/e/x/g;->b()Lcom/ubix/ssp/ad/e/x/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/f$l;

    invoke-direct {v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/f$l;-><init>(Lcom/ubix/ssp/ad/d/a;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/y/a/a$b;)V
    .locals 7

    .line 6
    sget-boolean v0, Lcom/ubix/ssp/ad/e/a0/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ubix/ssp/ad/e/a0/f;->d:Z

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/f$d;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/ubix/ssp/ad/e/a0/f$d;-><init>(Lcom/ubix/ssp/ad/e/a0/f;[ILcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/Timer;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x32

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/y/a/a$b;I)V
    .locals 4

    .line 7
    sget-boolean p2, Lcom/ubix/ssp/ad/e/a0/f;->d:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    sput-boolean p2, Lcom/ubix/ssp/ad/e/a0/f;->d:Z

    const-string p2, "new deeplink \u76ee\u6807app\u5df2\u5b89\u88c5 "

    const-string v0, "\u8c03\u8d77\u68c0\u6d4b\u5f00\u59cb"

    invoke-static {p2, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/a0/d;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/f$a;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/ubix/ssp/ad/e/a0/f$a;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/d;Ljava/util/Timer;Lcom/ubix/ssp/ad/e/y/a/a$b;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$f;)V

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/f$b;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/ubix/ssp/ad/e/a0/f$b;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/d;Ljava/util/Timer;Lcom/ubix/ssp/ad/e/y/a/a$b;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$d;)V

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/f$c;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/ubix/ssp/ad/e/a0/f$c;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/y/a/a$b;Lcom/ubix/ssp/ad/e/a0/d;Ljava/util/Timer;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private static a(Lcom/ubix/ssp/ad/e/y/a/a;Z)V
    .locals 1

    .line 8
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    const-string v0, "121"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lcom/ubix/ssp/ad/e/a0/f$m;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/a0/f$m;-><init>(Lcom/ubix/ssp/ad/e/y/a/a;)V

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/a0/c$h;)V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/ubix/ssp/ad/e/a0/f;->a:Z

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/y/a/a$b;)Z
    .locals 2

    .line 10
    const-string v0, "adClickAction: "

    const-string v1, "\u5c0f\u7a0b\u5e8f\u8c03\u8d77\u7c7b\u5e7f\u544a "

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->u:Lcom/ubix/ssp/ad/e/y/a/a$b$m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ubix/ssp/ad/e/a0/x;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/y/a/a$b$m;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Z
    .locals 4

    .line 11
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    new-instance p0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p1, 0x30008000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ubix.ssp.open.comm.UBiXWebViewActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "webUrl"

    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "adType"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "useInnerFace"

    invoke-virtual {p3, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "slotId"

    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p5, :cond_2

    const-string p1, "ubixAdBytes"

    :try_start_3
    invoke-static {p5}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;)[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p1, p5, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p1, :cond_1

    const-string p1, "replacePkg"

    :try_start_4
    iget-object p2, p5, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object p1, p5, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p1, :cond_2

    const-string p2, "removePkg"

    :try_start_5
    iget-boolean p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$c;->r:Z

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    if-eqz p7, :cond_3

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x362

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const/high16 p1, 0x10000000

    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    if-eqz p5, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object p0

    iget-object p1, p5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    const/16 p2, 0x66

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z
    .locals 8

    .line 12
    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->j0()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/d/a;I)Z
    .locals 12

    .line 13
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "adClickAction: "

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " downloadApp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/d/l;->o()I

    move-result p0

    if-ne p0, v3, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    const-string v8, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v4

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    iget-object v7, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    move-object v8, p1

    move v9, p2

    invoke-interface/range {v4 .. v9}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ubix/ssp/ad/d/a;I)V

    :goto_0
    return v3

    :cond_1
    move-object v8, p1

    move v9, p2

    iget p0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->l:I

    if-ne p0, v3, :cond_2

    invoke-static {v8, v9}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/a;I)V

    return v3

    :cond_2
    return v1

    :cond_3
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 15
    sput-boolean p0, Lcom/ubix/ssp/ad/e/a0/f;->e:Z

    return p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/f;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic b()Ljava/util/Timer;
    .locals 1

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/f;->b:Ljava/util/Timer;

    return-object v0
.end method

.method private b(Lcom/ubix/ssp/ad/e/y/a/a;)Z
    .locals 1

    .line 3
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->K:Lcom/ubix/ssp/ad/e/y/a/a$b$i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->K:Lcom/ubix/ssp/ad/e/y/a/a$b$i;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$i;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;)Z
    .locals 7

    .line 4
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    if-eqz v1, :cond_7

    iget v2, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->b:I

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v3

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->c:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ubix/ssp/ad/e/a0/n$b;->a([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    iget v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->b:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 p2, 0x2

    if-eq v3, p2, :cond_3

    const/4 p2, 0x3

    if-eq v3, p2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->I0()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "a"

    :try_start_1
    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "b"

    :try_start_2
    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->d:Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "Y29tLmthaXhpbmthbi51Z2MudmlkZW8uYXRvbS5zZXR0aW5nLlNka1JlZGlyZWN0SnVtcEFjdGl2aXR5"

    :try_start_3
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ubix/ssp/ad/e/a0/n$b;->a([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "aW50ZW50X2J1bmRsZV9jb21tb25fdHJhbnNmZXJfZGF0YQ=="

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ubix/ssp/ad/e/a0/n$b;->a([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return v4

    :cond_2
    return v0

    :cond_3
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->w0()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "cGtnTmFtZQ=="

    :try_start_5
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ubix/ssp/ad/e/a0/n$b;->a([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v4, "ZGVlcExpbms="

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ubix/ssp/ad/e/a0/n$b;->a([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$j;->d:Ljava/lang/String;

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, p2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_4
    return v0

    :cond_5
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->B0()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return v4

    :cond_6
    return v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    return v0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    .line 5
    sput-boolean p0, Lcom/ubix/ssp/ad/e/a0/f;->a:Z

    return p0
.end method

.method public static synthetic c()Ljava/util/TimerTask;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/f;->c:Ljava/util/TimerTask;

    return-object v0
.end method

.method private c(Lcom/ubix/ssp/ad/e/y/a/a;)Z
    .locals 9

    .line 2
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->K:Lcom/ubix/ssp/ad/e/y/a/a$b$i;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x30008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$i;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$i;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$i;->d:[Lcom/ubix/ssp/ad/e/y/a/a$b$c;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    array-length v3, p1

    if-lez v3, :cond_4

    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$c;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$c;->c:Ljava/lang/String;

    iget v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$c;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_3

    if-eq v7, v1, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$c;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$c;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Z)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private e(Lcom/ubix/ssp/ad/e/y/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->p()I

    move-result v0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;I)V

    return-void
.end method

.method private f(Lcom/ubix/ssp/ad/e/y/a/a;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->b(Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->c(Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x17

    return p1

    :cond_0
    const/16 p1, 0x16

    return p1

    :cond_1
    const/16 p1, 0x15

    return p1
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/d/a;ILjava/lang/String;IIILcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/e/a0/f$o;Lcom/ubix/ssp/ad/e/a0/f$s;Lcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/e/a0/f$n;Lcom/ubix/ssp/ad/g/h;)I
    .locals 21

    .line 1
    move-object/from16 v4, p1

    move-object/from16 v8, p3

    const-string v1, "__NO_CLICK_CONFIRM_KEY__"

    const-string v2, "__CAN_RUN_ACTIVE_KEY__"

    const-string v3, "ICON_URL"

    const-string v5, "__CLICK_AREA__"

    const/4 v6, 0x0

    :try_start_0
    sput-boolean v6, Lcom/ubix/ssp/ad/e/a0/f;->d:Z

    sput-boolean v6, Lcom/ubix/ssp/ad/e/a0/f;->a:Z

    sput-boolean v6, Lcom/ubix/ssp/ad/e/a0/f;->e:Z

    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    iget-object v11, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v11, :cond_1

    :cond_0
    move-object/from16 v1, p0

    goto/16 :goto_d

    :cond_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v13, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    iget-object v14, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->A:Ljava/lang/String;

    iget-object v15, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->z:Ljava/lang/String;

    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v7, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v6, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v10, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->H:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->I:Ljava/lang/String;

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    iget-wide v6, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->G:J

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v5

    :try_start_2
    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/c;->a([Ljava/lang/String;)Z

    move-result v5

    const-string v9, "IS_DOWNLOAD"

    invoke-virtual {v12, v9, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    invoke-virtual {v12, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DOWNLOAD_APP_NAME"

    invoke-virtual {v12, v5, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DOWNLOAD_APP_PUBLISHER"

    invoke-virtual {v12, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DOWNLOAD_APP_VERSION"

    invoke-virtual {v12, v5, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DOWNLOAD_APP_SIZE"

    invoke-virtual {v12, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "DOWNLOAD_APP_ICP_NUMBER"

    invoke-virtual {v12, v5, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DOWNLOAD_APP_SUITABLE_AGE"

    invoke-virtual {v12, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const-string v5, "TYPE"

    const/4 v9, 0x3

    const/4 v6, 0x2

    if-nez v0, :cond_8

    :try_start_4
    iget-object v0, v4, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v7, v0, Lcom/ubix/ssp/ad/e/y/a/a;->l:Lcom/ubix/ssp/ad/e/y/a/a$a;

    if-eqz v7, :cond_2

    iget v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$a;->b:I

    const/4 v10, 0x1

    if-eq v7, v10, :cond_4

    if-eq v7, v6, :cond_3

    :cond_2
    move-object v7, v4

    move-object/from16 v4, p0

    goto :goto_3

    :cond_3
    move-object v7, v4

    const/4 v10, 0x1

    move-object/from16 v4, p0

    goto :goto_4

    :cond_4
    invoke-virtual {v12, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v6

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/f$e;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v5, p10

    move-object v3, v4

    move-object/from16 v4, p13

    :try_start_5
    invoke-direct/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f$e;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/e/a0/f$n;Lcom/ubix/ssp/ad/e/a0/f$o;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v4, v1

    move-object v7, v3

    :try_start_6
    new-instance v1, Lcom/ubix/ssp/ad/e/a0/f$f;

    invoke-direct {v1, v4, v7, v8}, Lcom/ubix/ssp/ad/e/a0/f$f;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;)V

    invoke-static {v6, v12, v0, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    const/16 v0, 0x20

    return v0

    :catch_2
    move-exception v0

    :goto_2
    move-object v1, v4

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v4, v1

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2

    :goto_3
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v4, v0}, Lcom/ubix/ssp/ad/e/a0/f;->d(Lcom/ubix/ssp/ad/e/y/a/a;)I

    move-result v0

    if-eq v0, v6, :cond_6

    const/16 v13, 0x16

    if-ne v0, v13, :cond_5

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v19, 0x1

    :goto_6
    if-eqz v19, :cond_9

    if-eqz v10, :cond_7

    const/16 v0, 0x1f

    :cond_7
    return v0

    :cond_8
    move-object v7, v4

    move-object/from16 v4, p0

    const/16 v19, 0x0

    :cond_9
    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->u:Lcom/ubix/ssp/ad/e/y/a/a$b$m;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    return v0

    :cond_a
    move/from16 v19, v0

    :cond_b
    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->h:Z

    :cond_c
    iget v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->l:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_d

    if-nez p12, :cond_d

    iget-boolean v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->h:Z

    if-eqz v0, :cond_10

    :cond_d
    iget-object v0, v7, Lcom/ubix/ssp/ad/d/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v7, Lcom/ubix/ssp/ad/d/a;->u:Ljava/lang/String;

    goto :goto_7

    :cond_e
    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    :goto_7
    iget-object v2, v7, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object v2, v4, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const/16 v10, 0x191

    invoke-virtual {v0, v11, v2, v10}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object v2, v4, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const/16 v10, 0x133

    invoke-virtual {v0, v11, v2, v10}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    const/16 v19, 0x1

    :cond_f
    if-eqz v19, :cond_10

    return v6

    :cond_10
    iget-object v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->g:Z

    :cond_11
    sget v0, Lcom/ubix/ssp/ad/d/b;->r:I

    const/4 v10, 0x6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-boolean v0, v4, Lcom/ubix/ssp/ad/e/a0/f;->g:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-nez v0, :cond_16

    if-eqz p12, :cond_14

    :try_start_7
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    :catchall_0
    const/4 v0, 0x0

    :catchall_1
    :cond_12
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_13

    :try_start_9
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_13
    move-object v8, v0

    :try_start_a
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/f$g;

    move/from16 v3, p5

    move-object/from16 v6, p8

    move-object/from16 v2, p9

    move-object/from16 v5, p11

    move-object v1, v4

    move-object v4, v7

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/ubix/ssp/ad/e/a0/f$g;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/f$r;ILcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/e/a0/f$s;Lcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$o;)V

    move-object/from16 v9, p12

    invoke-interface {v9, v8, v12, v0}, Lcom/ubix/ssp/ad/g/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/g/b;)V

    const/4 v0, 0x7

    return v0

    :catch_5
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_e

    :cond_14
    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    invoke-virtual {v12, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move/from16 v1, p4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v13

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/f$h;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v2, p7

    move-object/from16 v6, p8

    move-object/from16 v3, p9

    move-object/from16 v7, p10

    :try_start_b
    invoke-direct/range {v0 .. v7}, Lcom/ubix/ssp/ad/e/a0/f$h;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/d/a;ILcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$o;)V

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/f$i;

    move/from16 v3, p6

    invoke-direct {v2, v1, v4, v3, v8}, Lcom/ubix/ssp/ad/e/a0/f$i;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/d/a;ILjava/lang/String;)V

    invoke-static {v13, v12, v0, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    goto :goto_9

    :catch_6
    move-exception v0

    goto/16 :goto_e

    :cond_15
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v13

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/f$j;

    move/from16 v5, p5

    move-object/from16 v2, p7

    move-object/from16 v6, p8

    move-object/from16 v3, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/ubix/ssp/ad/e/a0/f$j;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/d/a;ILcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$o;)V

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/f$k;

    invoke-direct {v2, v1, v4, v8}, Lcom/ubix/ssp/ad/e/a0/f$k;-><init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/d/a;Ljava/lang/String;)V

    invoke-static {v13, v12, v0, v2}, Lcom/ubix/ssp/ad/e/a0/c;->b(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    :goto_9
    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v10

    :cond_16
    move/from16 v5, p5

    move-object v1, v4

    move-object v4, v7

    if-eqz p14, :cond_19

    iget v0, v4, Lcom/ubix/ssp/ad/d/a;->e:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_19

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v0, :cond_18

    const-string v2, "2"

    move-object/from16 v3, v17

    :try_start_c
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    if-nez v0, :cond_17

    const-string v0, "16"

    :try_start_d
    iget-object v2, v1, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    if-nez v0, :cond_17

    const-string v0, "17"

    :try_start_e
    iget-object v2, v1, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    if-nez v0, :cond_17

    const-string v0, "18"

    :try_start_f
    iget-object v2, v1, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    if-nez v0, :cond_17

    const-string v0, "19"

    :try_start_10
    iget-object v2, v1, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-static {v0, v4, v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/d/a;I)Z

    move-result v19

    :cond_18
    invoke-interface/range {p14 .. p14}, Lcom/ubix/ssp/ad/g/h;->a()Z

    move-result v0

    if-nez v0, :cond_1a

    return v10

    :cond_19
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-static {v0, v4, v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/d/a;I)Z

    move-result v19

    :cond_1a
    if-eqz v19, :cond_1c

    const/4 v0, 0x4

    return v0

    :cond_1b
    move-object v1, v4

    move-object v4, v7

    :cond_1c
    iget-object v0, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v2, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    :try_start_11
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget v3, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->M:I

    iget-object v5, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->P:Lcom/ubix/ssp/ad/e/y/a/a$b$d;

    iget-object v6, v1, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    iget-object v7, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 p4, v0

    move/from16 p6, v3

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move/from16 p5, v10

    invoke-virtual/range {p4 .. p9}, Lcom/ubix/ssp/ad/e/w/k;->a(IILcom/ubix/ssp/ad/e/y/a/a$b$d;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    iget-object v5, v4, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    move/from16 p6, p2

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    move-object/from16 p7, v3

    move-object/from16 p9, v5

    move-object/from16 p8, v8

    invoke-static/range {p4 .. p9}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->j0()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1d

    const/16 v0, 0x21

    return v0

    :cond_1d
    return v9

    :cond_1e
    const-string v0, "clicked methods all failed "

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :cond_1f
    iget-object v2, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    :try_start_13
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget v3, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->M:I

    iget-object v5, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->P:Lcom/ubix/ssp/ad/e/y/a/a$b$d;

    iget-object v6, v1, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    iget-object v7, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 p4, v0

    move/from16 p6, v3

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move/from16 p5, v8

    invoke-virtual/range {p4 .. p9}, Lcom/ubix/ssp/ad/e/w/k;->a(IILcom/ubix/ssp/ad/e/y/a/a$b$d;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, v4, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    move/from16 p6, p2

    move-object/from16 p8, p3

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    move-object/from16 p7, v3

    move-object/from16 p9, v4

    invoke-static/range {p4 .. p9}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v9

    :cond_20
    :goto_c
    const/16 v20, 0x1

    goto :goto_f

    :goto_d
    const-string v0, "click ad is null"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    const/16 v20, 0x1

    return v20

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :goto_f
    return v20
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;)I
    .locals 7

    .line 2
    const-string v0, "&"

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    iget-object v2, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    sget-object v2, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v2

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const/16 v5, 0x191

    invoke-virtual {v2, v3, v4, v5}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "super opt op&hr&vi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->B0()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->w0()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->i:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->I0()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super opt info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->S:Lcom/ubix/ssp/ad/e/y/a/a$b$j;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/y/c/f;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_3
    const-string v2, "null"

    :goto_2
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/f;->b(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "super opt result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->e(Lcom/ubix/ssp/ad/e/y/a/a;)V

    return v2

    :cond_5
    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    const/16 v3, 0x14

    const/16 v4, 0x194

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$c;->s:I

    if-ne v0, v1, :cond_7

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v5

    const-string v6, "aHR0cA=="

    invoke-virtual {v5, v6}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/y/b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/y/b;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, p2, v1}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->e(Lcom/ubix/ssp/ad/e/y/a/a;)V

    return v2

    :cond_6
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object p2

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0, v4}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    return v3

    :cond_7
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->f(Lcom/ubix/ssp/ad/e/y/a/a;)I

    move-result v1

    const/16 p2, 0x15

    if-ne v1, p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v3

    :cond_9
    const/16 p2, 0x16

    if-ne v1, p2, :cond_a

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->e(Lcom/ubix/ssp/ad/e/y/a/a;)V

    return v1

    :cond_a
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object p2

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0, v4}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    return v1

    :catch_0
    :cond_b
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object p2

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const/16 v2, 0x192

    invoke-virtual {p2, p1, v0, v2}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_4
    return v1
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;)Z
    .locals 10

    .line 14
    const-string v0, "\u6253\u5f00deeplink  "

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$c;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_1

    const-string v6, "android.intent.extra.REFERRER"

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android-app://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const v4, 0x30008000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Z)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v1

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/f;->e(Lcom/ubix/ssp/ad/e/y/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "true"

    :try_start_3
    iget-object v5, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const-string v6, "__SHOULD_CHECK__"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {p1, v4}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    const-string p1, "\u5b89\u88c5\u8be5APP "

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.tencent.mm"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "weixin://"

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sput-boolean v7, Lcom/ubix/ssp/ad/e/a0/f;->d:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object p1

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const/16 v5, 0x193

    invoke-virtual {p1, v2, v4, v5}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installed "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/ubix/ssp/ad/e/a0/f;->a:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " getTargetUrl: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return v7

    :catch_1
    const-string p1, "\u6ca1\u6709\u5b89\u88c5\u8be5APP "

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f;->f:Ljava/util/HashMap;

    const/16 v3, 0x192

    invoke-virtual {p1, v2, v0, v3}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    :cond_3
    :goto_0
    return v1
.end method

.method public d(Lcom/ubix/ssp/ad/e/y/a/a;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
