.class public final Lcom/smartdigimkt/t2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/smartdigimkt/m3/b;

.field public final c:Lcom/smartdigimkt/l3/a;

.field public final d:Lcom/smartdigimkt/t2/g;

.field public e:Lcom/smartdigimkt/t2/j;

.field public f:Lcom/smartdigimkt/t2/f;

.field public g:J

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartdigimkt/m3/b;Lcom/smartdigimkt/l3/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/smartdigimkt/t2/k;->i:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/smartdigimkt/t2/k;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/smartdigimkt/t2/k;->c:Lcom/smartdigimkt/l3/a;

    .line 12
    .line 13
    new-instance p1, Lcom/smartdigimkt/t2/g;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/smartdigimkt/t2/g;-><init>(Lcom/smartdigimkt/t2/k;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/smartdigimkt/t2/k;->d:Lcom/smartdigimkt/t2/g;

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/smartdigimkt/t2/k;->h:I

    .line 22
    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 220
    const-string v0, "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"/><meta name=\"viewport\"content=\"width=device-width, initial-scale=1.0\"/><title>TopOn</title></head><body>"

    const-string v1, "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"/><meta name=\"viewport\"content=\"width=device-width, initial-scale=1.0\"/><title>TopOn</title></head>"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    return-object v3

    .line 221
    :cond_0
    :try_start_0
    sget-object v2, Lcom/smartdigimkt/c5/k;->a:[C

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p0

    goto :goto_0

    .line 223
    :cond_1
    const-string v2, "&lt;"

    const-string v4, "<"

    .line 224
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "&gt;"

    const-string v5, ">"

    .line 225
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "&amp;"

    const-string v5, "&"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "&quot;"

    const-string v5, "\""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    :goto_0
    const-string v4, "<!DOCTYPE html>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    const-string v3, "<html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 228
    :cond_2
    const-string v3, "<body"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public static a(Lcom/smartdigimkt/t2/k;[Lcom/smartdigimkt/u2/a;Lorg/json/JSONArray;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    array-length v2, v0

    const-string v3, "-3"

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 3
    iget-object v0, v1, Lcom/smartdigimkt/t2/k;->d:Lcom/smartdigimkt/t2/g;

    if-eqz v0, :cond_3c

    .line 4
    const-string v1, "2 VAST result parsers are required."

    invoke-virtual {v0, v3, v1}, Lcom/smartdigimkt/t2/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 5
    aget-object v5, v0, v2

    check-cast v5, Lcom/smartdigimkt/u2/c;

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    aget-object v0, v0, v6

    move-object v7, v0

    check-cast v7, Lcom/smartdigimkt/u2/c;

    if-nez v7, :cond_2

    :cond_1
    move-object v2, v3

    goto/16 :goto_24

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 7
    iget-object v8, v0, Lcom/smartdigimkt/m3/k;->i0:Lcom/smartdigimkt/m3/m;

    .line 8
    invoke-virtual {v5, v5}, Lcom/smartdigimkt/u2/c;->a(Lcom/smartdigimkt/u2/c;)V

    .line 9
    invoke-virtual {v5, v5}, Lcom/smartdigimkt/u2/c;->d(Lcom/smartdigimkt/u2/c;)V

    .line 10
    invoke-virtual {v5, v5}, Lcom/smartdigimkt/u2/c;->c(Lcom/smartdigimkt/u2/c;)V

    .line 11
    iget-object v0, v5, Lcom/smartdigimkt/u2/c;->e:Lcom/smartdigimkt/v2/z;

    .line 12
    iget-object v0, v0, Lcom/smartdigimkt/v2/z;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/a;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v0, Lcom/smartdigimkt/v2/a;->a:Lcom/smartdigimkt/v2/s;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, v0, Lcom/smartdigimkt/v2/s;->a:Lcom/smartdigimkt/v2/b;

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, v0, Lcom/smartdigimkt/v2/d;->a:Ljava/lang/String;

    move-object v10, v0

    goto :goto_0

    :catchall_0
    move v4, v2

    :catchall_1
    move-object/from16 v20, v3

    goto/16 :goto_22

    :cond_3
    const/4 v10, 0x0

    .line 17
    :goto_0
    iget-object v0, v5, Lcom/smartdigimkt/u2/c;->e:Lcom/smartdigimkt/v2/z;

    .line 18
    iget-object v0, v0, Lcom/smartdigimkt/v2/z;->a:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/a;

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, v0, Lcom/smartdigimkt/v2/a;->a:Lcom/smartdigimkt/v2/s;

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, v0, Lcom/smartdigimkt/v2/s;->b:Lcom/smartdigimkt/v2/k;

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, v0, Lcom/smartdigimkt/v2/d;->a:Ljava/lang/String;

    move-object v11, v0

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    .line 23
    :goto_1
    iget-object v0, v5, Lcom/smartdigimkt/u2/c;->e:Lcom/smartdigimkt/v2/z;

    .line 24
    iget-object v0, v0, Lcom/smartdigimkt/v2/z;->a:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/a;

    if-eqz v0, :cond_5

    .line 26
    iget-object v0, v0, Lcom/smartdigimkt/v2/a;->a:Lcom/smartdigimkt/v2/s;

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, v0, Lcom/smartdigimkt/v2/s;->c:Lcom/smartdigimkt/v2/m;

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, v0, Lcom/smartdigimkt/v2/d;->a:Ljava/lang/String;

    move-object v12, v0

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 29
    :goto_2
    invoke-virtual {v5, v5}, Lcom/smartdigimkt/u2/c;->b(Lcom/smartdigimkt/u2/c;)Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual {v7, v7}, Lcom/smartdigimkt/u2/c;->f(Lcom/smartdigimkt/u2/c;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v7, v7}, Lcom/smartdigimkt/u2/c;->e(Lcom/smartdigimkt/u2/c;)Ljava/lang/String;

    .line 32
    iget-object v14, v1, Lcom/smartdigimkt/t2/k;->a:Landroid/content/Context;

    invoke-static {v14}, Lcom/smartdigimkt/c5/h;->j(Landroid/content/Context;)I

    move-result v14

    .line 33
    iget-object v15, v1, Lcom/smartdigimkt/t2/k;->c:Lcom/smartdigimkt/l3/a;

    iget v15, v15, Lcom/smartdigimkt/l3/a;->b:I

    .line 34
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-string v9, "2"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v15, 0x3

    if-eqz v9, :cond_f

    .line 35
    iget-object v9, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 36
    iget v9, v9, Lcom/smartdigimkt/m3/k;->g0:I

    if-ne v9, v15, :cond_f

    .line 37
    iget-object v9, v1, Lcom/smartdigimkt/t2/k;->c:Lcom/smartdigimkt/l3/a;

    iget-object v9, v9, Lcom/smartdigimkt/l3/a;->r:Lcom/smartdigimkt/m3/e;

    .line 38
    iget-object v9, v9, Lcom/smartdigimkt/m3/e;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v15, -0x215ddd38

    if-eq v2, v15, :cond_9

    const v15, 0x59df59c2

    if-eq v2, v15, :cond_8

    const v15, 0x59df5a3e

    if-eq v2, v15, :cond_7

    const v15, 0x60b65fb2

    if-eq v2, v15, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "728x90"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    goto :goto_4

    :catchall_2
    move-object/from16 v20, v3

    :catchall_3
    const/4 v4, 0x0

    goto/16 :goto_22

    :cond_7
    const-string v2, "320x90"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v6

    goto :goto_4

    :cond_8
    const-string v2, "320x50"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    const-string v2, "300x250"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v2, -0x1

    :goto_4
    if-eqz v2, :cond_e

    if-eq v2, v6, :cond_d

    if-eq v2, v4, :cond_c

    const/4 v9, 0x3

    if-eq v2, v9, :cond_b

    goto :goto_6

    .line 40
    :cond_b
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->a:Landroid/content/Context;

    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v2, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;F)I

    move-result v2

    :goto_5
    move v14, v2

    goto :goto_6

    .line 41
    :cond_c
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->a:Landroid/content/Context;

    const/high16 v9, 0x43960000    # 300.0f

    invoke-static {v2, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_5

    .line 42
    :cond_d
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->a:Landroid/content/Context;

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v2, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_5

    .line 43
    :cond_e
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->a:Landroid/content/Context;

    const/high16 v9, 0x42860000    # 67.0f

    invoke-static {v2, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_5

    .line 44
    :cond_f
    :goto_6
    invoke-virtual {v7, v7, v14}, Lcom/smartdigimkt/u2/c;->a(Lcom/smartdigimkt/u2/c;I)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-wide/16 v17, -0x1

    move-wide/from16 v14, v17

    const-wide/16 v17, 0x0

    goto :goto_8

    .line 46
    :cond_10
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-wide/16 v17, 0x0

    const-string v14, "HH:mm:ss"

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    const-string v14, "UTC"

    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 48
    :try_start_2
    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catch_0
    move-exception v0

    .line 49
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_11

    .line 50
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :cond_11
    move-wide/from16 v14, v17

    .line 51
    :goto_8
    :try_start_4
    iget-object v0, v7, Lcom/smartdigimkt/u2/c;->e:Lcom/smartdigimkt/v2/z;

    .line 52
    iget-object v0, v0, Lcom/smartdigimkt/v2/z;->a:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v9, 0x0

    .line 53
    :try_start_5
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/a;

    .line 54
    iget-object v0, v0, Lcom/smartdigimkt/v2/a;->a:Lcom/smartdigimkt/v2/s;

    .line 55
    iget-object v0, v0, Lcom/smartdigimkt/v2/s;->e:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/i;

    .line 57
    iget-object v0, v0, Lcom/smartdigimkt/v2/i;->a:Lcom/smartdigimkt/v2/t;

    .line 58
    iget-object v0, v0, Lcom/smartdigimkt/v2/t;->c:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    check-cast v0, Lcom/smartdigimkt/v2/u;

    .line 60
    iget-object v0, v0, Lcom/smartdigimkt/v2/u;->c:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v9, v0

    goto :goto_9

    :catchall_4
    move-object/from16 v20, v3

    move v4, v9

    goto/16 :goto_22

    :catch_1
    const/4 v9, 0x0

    .line 62
    :goto_9
    :try_start_7
    iget-object v0, v7, Lcom/smartdigimkt/u2/c;->e:Lcom/smartdigimkt/v2/z;

    .line 63
    iget-object v0, v0, Lcom/smartdigimkt/v2/z;->a:Ljava/util/ArrayList;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v4, 0x0

    .line 64
    :try_start_8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/a;

    .line 65
    iget-object v0, v0, Lcom/smartdigimkt/v2/a;->a:Lcom/smartdigimkt/v2/s;

    .line 66
    iget-object v0, v0, Lcom/smartdigimkt/v2/s;->e:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/i;

    .line 68
    iget-object v0, v0, Lcom/smartdigimkt/v2/i;->a:Lcom/smartdigimkt/v2/t;

    .line 69
    iget-object v0, v0, Lcom/smartdigimkt/v2/t;->c:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    check-cast v0, Lcom/smartdigimkt/v2/u;

    .line 71
    iget-object v0, v0, Lcom/smartdigimkt/v2/u;->d:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move v4, v0

    goto :goto_a

    :catch_2
    const/4 v4, 0x0

    .line 73
    :goto_a
    :try_start_a
    iget-object v0, v7, Lcom/smartdigimkt/u2/c;->e:Lcom/smartdigimkt/v2/z;

    .line 74
    iget-object v0, v0, Lcom/smartdigimkt/v2/z;->a:Ljava/util/ArrayList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v7, 0x0

    .line 75
    :try_start_b
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    check-cast v0, Lcom/smartdigimkt/v2/a;

    .line 76
    iget-object v0, v0, Lcom/smartdigimkt/v2/a;->a:Lcom/smartdigimkt/v2/s;

    .line 77
    iget-object v7, v0, Lcom/smartdigimkt/v2/s;->e:Ljava/util/ArrayList;

    if-nez v7, :cond_12

    const/4 v0, 0x0

    :goto_b
    move-object/from16 v24, v12

    goto/16 :goto_12

    .line 78
    :cond_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v0, v6, :cond_17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v22, v0, 0x1

    move-object/from16 v0, v21

    check-cast v0, Lcom/smartdigimkt/v2/i;

    move/from16 v21, v6

    .line 79
    iget-object v6, v0, Lcom/smartdigimkt/v2/i;->b:Ljava/util/ArrayList;

    if-eqz v6, :cond_13

    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    move-object/from16 v23, v7

    move-object/from16 v24, v12

    goto :goto_11

    :cond_14
    move-object/from16 v23, v7

    move-object/from16 v24, v12

    move-object/from16 v12, v20

    const/4 v7, 0x0

    .line 81
    :goto_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-ge v7, v0, :cond_16

    .line 82
    :try_start_d
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartdigimkt/v2/g;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v25, v6

    .line 83
    :try_start_e
    invoke-static {v0, v12}, Lcom/smartdigimkt/u2/c;->a(Lcom/smartdigimkt/v2/g;Lcom/smartdigimkt/v2/g;)I

    move-result v6
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move/from16 v20, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    move-object v12, v0

    goto :goto_10

    :catch_3
    move-exception v0

    :goto_e
    move/from16 v20, v7

    goto :goto_f

    :catch_4
    move-exception v0

    move-object/from16 v25, v6

    goto :goto_e

    .line 84
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_15
    :goto_10
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v6, v25

    goto :goto_d

    :cond_16
    move-object/from16 v20, v12

    :goto_11
    move/from16 v6, v21

    move/from16 v0, v22

    move-object/from16 v7, v23

    move-object/from16 v12, v24

    goto :goto_c

    :cond_17
    move-object/from16 v0, v20

    goto :goto_b

    .line 85
    :goto_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const-string v12, ""

    if-eqz v0, :cond_21

    .line 87
    :try_start_10
    invoke-static {v0}, Lcom/smartdigimkt/u2/c;->a(Lcom/smartdigimkt/v2/g;)Ljava/lang/Integer;

    move-result-object v20

    if-eqz v20, :cond_21

    .line 88
    invoke-static {v0}, Lcom/smartdigimkt/u2/c;->a(Lcom/smartdigimkt/v2/g;)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-eq v12, v3, :cond_1a

    const/4 v3, 0x2

    if-eq v12, v3, :cond_19

    const/4 v3, 0x3

    if-eq v12, v3, :cond_18

    goto :goto_13

    .line 89
    :cond_18
    :try_start_11
    iput v3, v1, Lcom/smartdigimkt/t2/k;->h:I

    :goto_13
    move-object/from16 v12, v21

    move-object/from16 v16, v12

    goto :goto_14

    .line 90
    :cond_19
    iput v3, v1, Lcom/smartdigimkt/t2/k;->h:I

    .line 91
    iget-object v3, v0, Lcom/smartdigimkt/v2/g;->c:Lcom/smartdigimkt/v2/x;

    .line 92
    iget-object v3, v3, Lcom/smartdigimkt/v2/x;->a:Ljava/lang/String;

    move-object v12, v3

    move-object/from16 v16, v21

    goto :goto_14

    .line 93
    :cond_1a
    iput v3, v1, Lcom/smartdigimkt/t2/k;->h:I

    .line 94
    iget-object v3, v0, Lcom/smartdigimkt/v2/g;->e:Lcom/smartdigimkt/v2/o;

    .line 95
    iget-object v3, v3, Lcom/smartdigimkt/v2/d;->a:Ljava/lang/String;

    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 97
    invoke-static {v3}, Lcom/smartdigimkt/t2/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1b
    move-object/from16 v16, v3

    move-object/from16 v12, v21

    .line 98
    :goto_14
    iget-object v3, v0, Lcom/smartdigimkt/v2/g;->f:Lcom/smartdigimkt/v2/h;

    if-eqz v3, :cond_1c

    .line 99
    iget-object v3, v3, Lcom/smartdigimkt/v2/c;->a:Ljava/lang/String;

    .line 100
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1c
    iget-object v3, v0, Lcom/smartdigimkt/v2/g;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_1e

    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v19, v12

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v6, :cond_1f

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Lcom/smartdigimkt/v2/y;

    move/from16 v21, v6

    .line 103
    iget-object v6, v3, Lcom/smartdigimkt/v2/y;->a:Ljava/lang/String;

    move-object/from16 v23, v3

    .line 104
    const-string v3, "creativeView"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v3, v23

    goto :goto_16

    :cond_1d
    move/from16 v6, v21

    move-object/from16 v3, v22

    goto :goto_15

    :cond_1e
    move-object/from16 v19, v12

    :cond_1f
    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_20

    .line 105
    iget-object v6, v3, Lcom/smartdigimkt/v2/y;->b:Ljava/lang/String;

    .line 106
    invoke-static {v6}, Lcom/smartdigimkt/t2/l;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 107
    iget-object v3, v3, Lcom/smartdigimkt/v2/y;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 109
    :cond_20
    :try_start_12
    iget-object v3, v0, Lcom/smartdigimkt/v2/g;->a:Ljava/lang/String;

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 111
    :try_start_13
    iget-object v0, v0, Lcom/smartdigimkt/v2/g;->b:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move v6, v0

    move-object/from16 v0, v16

    move-object/from16 v12, v19

    goto :goto_18

    :catchall_5
    const/4 v3, -0x1

    :catchall_6
    move-object/from16 v0, v16

    move-object/from16 v12, v19

    :goto_17
    const/4 v6, -0x1

    goto :goto_18

    :cond_21
    move-object/from16 v20, v3

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    move-object v12, v0

    const/4 v3, -0x1

    goto :goto_17

    .line 113
    :goto_18
    :try_start_14
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 114
    iget-object v7, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 115
    iput-object v10, v7, Lcom/smartdigimkt/m3/c;->c:Ljava/lang/String;

    .line 116
    :cond_22
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 117
    iget-object v7, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 118
    iput-object v11, v7, Lcom/smartdigimkt/m3/c;->d:Ljava/lang/String;

    .line 119
    :cond_23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 120
    iget-object v7, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 121
    iput-object v2, v7, Lcom/smartdigimkt/m3/c;->i:Ljava/lang/String;

    :cond_24
    cmp-long v2, v14, v17

    if-lez v2, :cond_25

    .line 122
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 123
    iput-wide v14, v2, Lcom/smartdigimkt/m3/c;->M:J

    :cond_25
    if-lez v9, :cond_26

    .line 124
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 125
    iput v9, v2, Lcom/smartdigimkt/m3/c;->K:I

    :cond_26
    if-lez v4, :cond_27

    .line 126
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 127
    iput v4, v2, Lcom/smartdigimkt/m3/c;->L:I

    .line 128
    :cond_27
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 129
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 131
    iput-object v12, v2, Lcom/smartdigimkt/m3/c;->f:Ljava/lang/String;

    .line 132
    :cond_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 133
    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 134
    iput-object v0, v2, Lcom/smartdigimkt/m3/c;->A:Ljava/lang/String;

    if-lez v3, :cond_29

    .line 135
    iput v3, v2, Lcom/smartdigimkt/m3/c;->E:I

    :cond_29
    if-lez v6, :cond_2a

    .line 136
    iput v6, v2, Lcom/smartdigimkt/m3/c;->F:I

    .line 137
    :cond_2a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 138
    iget-object v0, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 139
    iput-object v13, v0, Lcom/smartdigimkt/m3/c;->l:Ljava/lang/String;

    .line 140
    :cond_2b
    iget-object v0, v5, Lcom/smartdigimkt/u2/c;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v2, v5, Lcom/smartdigimkt/u2/c;->d:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2c
    :goto_19
    if-ge v4, v3, :cond_2d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/smartdigimkt/v2/r;

    .line 144
    iget-object v7, v6, Lcom/smartdigimkt/v2/c;->a:Ljava/lang/String;

    .line 145
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 146
    iget-object v6, v6, Lcom/smartdigimkt/v2/c;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 148
    :cond_2d
    iget-object v2, v8, Lcom/smartdigimkt/m3/m;->d:[Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v4, 0x0

    .line 149
    :try_start_15
    new-array v3, v4, [Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    iput-object v0, v8, Lcom/smartdigimkt/m3/m;->d:[Ljava/lang/String;

    .line 151
    :cond_2e
    iget-object v0, v5, Lcom/smartdigimkt/u2/c;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v2, v5, Lcom/smartdigimkt/u2/c;->c:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2f
    :goto_1a
    if-ge v4, v3, :cond_30

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/smartdigimkt/v2/f;

    .line 155
    iget-object v7, v6, Lcom/smartdigimkt/v2/c;->a:Ljava/lang/String;

    .line 156
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 157
    iget-object v6, v6, Lcom/smartdigimkt/v2/c;->a:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 159
    :cond_30
    iget-object v2, v8, Lcom/smartdigimkt/m3/m;->e:[Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 160
    array-length v3, v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-nez v3, :cond_31

    goto :goto_1c

    :cond_31
    move-object v9, v2

    :goto_1b
    const/4 v4, 0x0

    goto :goto_1d

    :cond_32
    :goto_1c
    const/4 v9, 0x0

    goto :goto_1b

    .line 161
    :goto_1d
    :try_start_17
    new-array v2, v4, [Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    iput-object v0, v8, Lcom/smartdigimkt/m3/m;->e:[Ljava/lang/String;

    .line 163
    :cond_33
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 164
    iget-object v0, v8, Lcom/smartdigimkt/m3/m;->v:[Ljava/lang/String;

    .line 165
    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object v0, v8, Lcom/smartdigimkt/m3/m;->v:[Ljava/lang/String;

    :cond_34
    const/16 v0, 0x17

    .line 167
    invoke-static {v0}, Lcom/smartdigimkt/k/u;->b(I)[I

    move-result-object v0

    .line 168
    array-length v2, v0

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v2, :cond_38

    aget v3, v0, v9

    .line 169
    iget-object v4, v5, Lcom/smartdigimkt/u2/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :cond_35
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartdigimkt/v2/y;

    .line 173
    iget-object v10, v7, Lcom/smartdigimkt/v2/y;->a:Ljava/lang/String;

    .line 174
    sget-object v11, Lcom/smartdigimkt/u2/b;->a:[Ljava/lang/String;

    invoke-static {v3}, Lcom/smartdigimkt/k/u;->a(I)I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 175
    iget-object v7, v7, Lcom/smartdigimkt/v2/y;->b:Ljava/lang/String;

    .line 176
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 177
    :cond_36
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_37

    .line 178
    invoke-static {v3}, Lcom/smartdigimkt/k/u;->a(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_37
    :goto_20
    :pswitch_0
    const/4 v4, 0x0

    goto/16 :goto_21

    .line 179
    :pswitch_1
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->t:[Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    const/4 v4, 0x0

    .line 180
    :try_start_19
    new-array v7, v4, [Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 181
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->t:[Ljava/lang/String;

    goto :goto_20

    .line 182
    :pswitch_2
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->k:[Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    const/4 v4, 0x0

    .line 183
    :try_start_1b
    new-array v7, v4, [Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    :try_start_1c
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 184
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->k:[Ljava/lang/String;

    goto :goto_20

    .line 185
    :pswitch_3
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->n:[Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    const/4 v4, 0x0

    .line 186
    :try_start_1d
    new-array v7, v4, [Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :try_start_1e
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 187
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->n:[Ljava/lang/String;

    goto :goto_20

    .line 188
    :pswitch_4
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->m:[Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    const/4 v4, 0x0

    .line 189
    :try_start_1f
    new-array v7, v4, [Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    :try_start_20
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 190
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->m:[Ljava/lang/String;

    goto :goto_20

    .line 191
    :pswitch_5
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->j:[Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    const/4 v4, 0x0

    .line 192
    :try_start_21
    new-array v7, v4, [Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    :try_start_22
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 193
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->j:[Ljava/lang/String;

    goto :goto_20

    .line 194
    :pswitch_6
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->i:[Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    const/4 v4, 0x0

    .line 195
    :try_start_23
    new-array v7, v4, [Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :try_start_24
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->i:[Ljava/lang/String;

    goto :goto_20

    .line 197
    :pswitch_7
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->h:[Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    const/4 v4, 0x0

    .line 198
    :try_start_25
    new-array v7, v4, [Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    :try_start_26
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 199
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->h:[Ljava/lang/String;

    goto/16 :goto_20

    .line 200
    :pswitch_8
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->g:[Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    const/4 v4, 0x0

    .line 201
    :try_start_27
    new-array v7, v4, [Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    :try_start_28
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->g:[Ljava/lang/String;

    goto/16 :goto_20

    .line 203
    :pswitch_9
    iget-object v3, v8, Lcom/smartdigimkt/m3/m;->f:[Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    const/4 v4, 0x0

    .line 204
    :try_start_29
    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/smartdigimkt/t2/k;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 205
    iput-object v3, v8, Lcom/smartdigimkt/m3/m;->f:[Ljava/lang/String;

    :goto_21
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1e

    :cond_38
    const/4 v4, 0x0

    .line 206
    iget-object v0, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    .line 207
    iget-object v2, v0, Lcom/smartdigimkt/m3/c;->i:Ljava/lang/String;

    const/4 v3, 0x1

    .line 208
    iput-boolean v3, v0, Lcom/smartdigimkt/m3/c;->R:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    move v2, v3

    goto :goto_23

    :catchall_7
    move-object/from16 v20, v3

    move v4, v7

    :catchall_8
    :goto_22
    move v2, v4

    .line 209
    :goto_23
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    .line 210
    iget-object v0, v1, Lcom/smartdigimkt/t2/k;->d:Lcom/smartdigimkt/t2/g;

    if-eqz v0, :cond_3c

    if-eqz v2, :cond_3b

    .line 211
    iget-boolean v0, v1, Lcom/smartdigimkt/t2/k;->i:Z

    if-eqz v0, :cond_3a

    .line 212
    invoke-static {}, Lcom/smartdigimkt/f3/f;->a()Lcom/smartdigimkt/f3/f;

    move-result-object v0

    iget-object v2, v1, Lcom/smartdigimkt/t2/k;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/smartdigimkt/t2/k;->c:Lcom/smartdigimkt/l3/a;

    iget-object v3, v3, Lcom/smartdigimkt/l3/a;->i:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    iget-object v5, v0, Lcom/smartdigimkt/f3/f;->a:Lcom/smartdigimkt/k3/q;

    if-nez v5, :cond_39

    .line 214
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartdigimkt/k3/d;->a(Landroid/content/Context;)Lcom/smartdigimkt/k3/d;

    move-result-object v2

    invoke-static {v2}, Lcom/smartdigimkt/k3/q;->a(Lcom/smartdigimkt/k3/d;)Lcom/smartdigimkt/k3/q;

    move-result-object v2

    iput-object v2, v0, Lcom/smartdigimkt/f3/f;->a:Lcom/smartdigimkt/k3/q;

    .line 215
    :cond_39
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object v2

    new-instance v5, Lcom/smartdigimkt/f3/e;

    invoke-direct {v5, v0, v3, v4}, Lcom/smartdigimkt/f3/e;-><init>(Lcom/smartdigimkt/f3/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/smartdigimkt/b4/e;->b(Ljava/lang/Runnable;)V

    .line 216
    :cond_3a
    iget-object v0, v1, Lcom/smartdigimkt/t2/k;->d:Lcom/smartdigimkt/t2/g;

    iget-object v1, v1, Lcom/smartdigimkt/t2/k;->b:Lcom/smartdigimkt/m3/b;

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/t2/g;->a(Lcom/smartdigimkt/m3/b;)V

    goto :goto_25

    .line 217
    :cond_3b
    const-string v1, "Do fillAdxOfferFormVast is fail."

    move-object/from16 v2, v20

    invoke-virtual {v0, v2, v1}, Lcom/smartdigimkt/t2/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 218
    :goto_24
    iget-object v0, v1, Lcom/smartdigimkt/t2/k;->d:Lcom/smartdigimkt/t2/g;

    if-eqz v0, :cond_3c

    .line 219
    const-string v1, "One of parsers is null."

    invoke-virtual {v0, v2, v1}, Lcom/smartdigimkt/t2/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_25
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    .line 231
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 232
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 234
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method
