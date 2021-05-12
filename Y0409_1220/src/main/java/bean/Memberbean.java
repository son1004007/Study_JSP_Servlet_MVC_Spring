package bean;

public class Memberbean {
	 private String name;
	   private String id;
	   
	   public String getName() {
	      return name;
	   }
	   public void setName(String name) {
	      this.name = name;
	   }
	   public String getId() {
	      return id;
	   }
	   public void setId(String id) {
	      this.id = id;
	   }

		public Memberbean(String name, String id) {
			this.name=name;
			this.id=id;
		}
		public Memberbean() {
			super();
		}
		@Override
		public String toString() {
			return "Memberbean [name=" + name +", id="+id+"]";
		}


}
