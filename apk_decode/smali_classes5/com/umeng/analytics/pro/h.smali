.class public Lcom/umeng/analytics/pro/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/h$a;,
        Lcom/umeng/analytics/pro/h$b;,
        Lcom/umeng/analytics/pro/h$c;,
        Lcom/umeng/analytics/pro/h$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "subprocess/"

.field public static final b:Ljava/lang/String;

.field public static final c:I = 0x2

.field public static final d:Ljava/lang/String; = "id"

.field public static final e:Ljava/lang/String; = "INTEGER"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/be;->b()Lcom/umeng/analytics/pro/be;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ua"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/be;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/umeng/analytics/pro/h;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
