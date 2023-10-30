import { Sequelize } from "sequelize";
import db from "../config/DataBase.js";


const {DataTypes} = Sequelize;

const Tanggapan = db.define("tanggapan", {
   
    id_pengaduan: DataTypes.INTEGER(11),
    tgl_tanggapan: DataTypes.DATE(),
    tanggapan: DataTypes.TEXT(),
    id_petugas: DataTypes.INTEGER(11)
}, {
    freezeTableName: true
});

export default Tanggapan;

(async()=>{
    await db.sync();
})();