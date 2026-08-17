package com.czhj.sdk.common.Database;

import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class SQLiteBuider {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29259a = "SQLiteBuider";

    /* renamed from: b, reason: collision with root package name */
    private static Map<String, String> f29260b;

    public static class CreateTable {

        /* renamed from: a, reason: collision with root package name */
        String f29261a;

        /* renamed from: b, reason: collision with root package name */
        String f29262b;

        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            private String f29263a = null;

            /* renamed from: b, reason: collision with root package name */
            private Map<String, String> f29264b = null;

            /* renamed from: c, reason: collision with root package name */
            private Map<String, String> f29265c = null;

            /* renamed from: d, reason: collision with root package name */
            private boolean f29266d;

            public Builder autoincrement(boolean z2) {
                this.f29266d = z2;
                return this;
            }

            public CreateTable build() {
                StringBuilder sb = new StringBuilder("create table if not exists ");
                sb.append(this.f29263a);
                sb.append(" ( ");
                List listB = SQLiteBuider.b(this.f29264b);
                if (listB.size() > 1) {
                    Iterator it = SQLiteBuider.b(this.f29265c).iterator();
                    while (it.hasNext()) {
                        sb.append((String) it.next());
                        sb.append(" ,");
                    }
                    sb.append(" primary key ( ");
                    Iterator<String> it2 = this.f29264b.keySet().iterator();
                    while (it2.hasNext()) {
                        sb.append(it2.next());
                        if (it2.hasNext()) {
                            sb.append(" ,");
                        } else {
                            sb.append(" )");
                        }
                    }
                } else {
                    sb.append(this.f29266d ? "id integer primary key AUTOINCREMENT" : String.format("%s primary key ", listB.get(0)));
                    this.f29265c.remove(this.f29264b.keySet().iterator().next());
                    for (String str : SQLiteBuider.b(this.f29265c)) {
                        sb.append(" ,");
                        sb.append(str);
                        sb.append(" ");
                    }
                }
                sb.append(" ); ");
                CreateTable createTable = new CreateTable();
                createTable.f29262b = sb.toString();
                createTable.f29261a = this.f29263a;
                return createTable;
            }

            public Builder setColumns(Map<String, String> map) {
                this.f29265c = map;
                return this;
            }

            public Builder setPrimaryKey(String str, String str2) {
                if (this.f29264b == null) {
                    this.f29264b = new HashMap();
                }
                this.f29264b.put(str, str2);
                return this;
            }

            public Builder setTableName(String str) {
                this.f29263a = str;
                return this;
            }
        }
    }

    public static class CreateTriggerBuilder {

        /* renamed from: a, reason: collision with root package name */
        private String f29267a = null;

        /* renamed from: b, reason: collision with root package name */
        private String f29268b = null;

        /* renamed from: c, reason: collision with root package name */
        private String f29269c = null;

        /* renamed from: d, reason: collision with root package name */
        private String f29270d = null;

        public String build() {
            return String.format("create trigger if not exists %s after %s on %s begin %s end;", this.f29267a, this.f29268b, this.f29269c, this.f29270d);
        }

        public CreateTriggerBuilder setExecSql(String str) {
            this.f29270d = str;
            return this;
        }

        public CreateTriggerBuilder setOnAction(String str) {
            this.f29268b = str;
            return this;
        }

        public CreateTriggerBuilder setOnTableName(String str) {
            this.f29269c = str;
            return this;
        }

        public CreateTriggerBuilder setTriggerName(String str) {
            this.f29267a = str;
            return this;
        }
    }

    public static class Insert {

        /* renamed from: a, reason: collision with root package name */
        String f29271a;

        /* renamed from: b, reason: collision with root package name */
        String f29272b;

        /* renamed from: c, reason: collision with root package name */
        Map<String, Object> f29273c;

        /* renamed from: d, reason: collision with root package name */
        List<Object> f29274d;

        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            private String f29275a = null;

            /* renamed from: b, reason: collision with root package name */
            private Map<String, Object> f29276b = null;

            public Insert build() {
                List<Object> listAsList = Arrays.asList(this.f29276b.keySet().toArray());
                StringBuilder sb = new StringBuilder("insert or replace into ");
                sb.append(this.f29275a);
                StringBuilder sb2 = new StringBuilder("(");
                StringBuilder sb3 = new StringBuilder("(");
                int i2 = 0;
                while (i2 < listAsList.size()) {
                    sb2.append(listAsList.get(i2));
                    sb3.append("?");
                    i2++;
                    if (i2 < listAsList.size()) {
                        sb2.append(", ");
                        sb3.append(", ");
                    }
                }
                sb2.append(")");
                sb3.append(")");
                sb.append((CharSequence) sb2);
                sb.append(" values ");
                sb.append((CharSequence) sb3);
                Insert insert = new Insert();
                insert.f29271a = this.f29275a;
                insert.f29274d = listAsList;
                insert.f29273c = this.f29276b;
                insert.f29272b = sb.toString();
                return insert;
            }

            public void setColumnValues(Map<String, Object> map) {
                this.f29276b = map;
            }

            public void setTableName(String str) {
                this.f29275a = str;
            }
        }

        public List<Object> getColumns() {
            return this.f29274d;
        }

        public String getSql() {
            return this.f29272b;
        }

        public String getTableName() {
            return this.f29271a;
        }

        public Map<String, Object> getValues() {
            return this.f29273c;
        }
    }

    public static class Update {

        /* renamed from: a, reason: collision with root package name */
        String f29277a;

        /* renamed from: b, reason: collision with root package name */
        String f29278b;

        /* renamed from: c, reason: collision with root package name */
        Map<String, Object> f29279c;

        /* renamed from: d, reason: collision with root package name */
        String f29280d;

        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            private String f29281a = null;

            /* renamed from: b, reason: collision with root package name */
            private Map<String, Object> f29282b = null;

            /* renamed from: c, reason: collision with root package name */
            private String f29283c = null;

            public Update build() {
                StringBuilder sb = new StringBuilder("update ");
                sb.append(this.f29281a);
                sb.append(" set ");
                Iterator<String> it = this.f29282b.keySet().iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    sb.append(next + " = " + this.f29282b.get(next));
                    if (it.hasNext()) {
                        sb.append(", ");
                    }
                }
                if (!TextUtils.isEmpty(this.f29283c)) {
                    sb.append(" " + this.f29283c);
                }
                Update update = new Update();
                update.f29277a = this.f29281a;
                update.f29279c = this.f29282b;
                update.f29280d = this.f29283c;
                update.f29278b = sb.toString();
                return update;
            }

            public void setColumnValues(Map<String, Object> map) {
                this.f29282b = map;
            }

            public void setTableName(String str) {
                this.f29281a = str;
            }

            public void setWhere(String str) {
                this.f29283c = str;
            }
        }

        public String getSql() {
            return this.f29278b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> b(Map<String, String> map) {
        String str;
        ArrayList arrayList = new ArrayList(map.size());
        for (String str2 : map.keySet()) {
            String lowerCase = map.get(str2).toLowerCase();
            lowerCase.getClass();
            lowerCase.hashCode();
            str = a.f10878b;
            switch (lowerCase) {
                case "int":
                case "long":
                    str = "integer";
                    break;
                case "text":
                case "java.lang.string":
                    break;
                default:
                    str = "blob";
                    break;
            }
            arrayList.add(String.format("%s %s ", str2, str));
        }
        return arrayList;
    }
}
